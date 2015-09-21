
using namespace std;
Process::cb_ret_t on_breakpoint(Event::const_ptr ev)
{
	return Process::cbProcContinue;
}

int main(int argc, char **argv){

   Process::registerEventCallback(EventType::Breakpoint, on_breakpoint);
   Process::registerEventCallback(EventType::SingleStep, on_singlestep);

   bp = Breakpoint::newBreakpoint();
   early_bp = Breakpoint::newBreakpoint();


   std::set<Thread::ptr> singlestep_threads;
   std::set<Thread::ptr> regular_threads;

   for (std::vector<Process::ptr>::iterator i = comp->procs.begin();
        i != comp->procs.end(); i++) {
      Process::ptr proc = *i;
      bool result = proc->continueProc();
      if (!result) {
         logerror("Failed to continue process\n");
         myerror = true;
      }

      result = proc->stopProc();
      if (!result) {
         logerror("Failed to stop process\n");
         myerror = true;
      }

      ThreadPool::iterator k;
      int count = 0;

	  for (k = proc->threads().begin(); k != proc->threads().end(); k++)
      {
         //Singlestep half of the threads.
         Thread::ptr thrd = *k;
		 Dyninst::Address startAddr = thrd->getStartFunction();
		 Dyninst::THR_ID tid = thrd->getTID();
		 logerror("Thread %d has initial function at %p\n", tid, startAddr);
		 if ((count++ % 2 == 0) || (thrd->isInitialThread())) {
            singlestep_threads.insert(thrd);
			logerror("Thread %d (start %p) single-stepping\n", tid, startAddr);
            thrd->setSingleStepMode(true);
		 }
         else {
			 logerror("Thread %d (start %p) running normally\n", tid, startAddr);
            regular_threads.insert(thrd);
         }
      }
   }


   for (std::vector<Process::ptr>::iterator i = comp->procs.begin();
        i!= comp->procs.end(); i++) {
      Process::ptr proc = *i;
      bool result = proc->continueProc();
      if (!result) {
         logerror("Failed to continue process\n");
         myerror = true;
      }
   }
   logerror("Mutator waiting for sync message\n");

   syncloc loc[NUM_PARALLEL_PROCS];
   bool result = comp->recv_broadcast((unsigned char *) loc, sizeof(syncloc));
   if (!result) {
      logerror("Failed to receive sync broadcast\n");
      myerror = true;
   }
   for (unsigned j=0; j<comp->procs.size(); j++) {
      if (loc[j].code != SYNCLOC_CODE) {
         logerror("Received unexpected message code\n");
         myerror = true;
      }
   }

   std::set<Thread::ptr>::iterator i;
   for (i = singlestep_threads.begin(); i != singlestep_threads.end(); i++)
   {
      logerror("Results for thread %d/%d\n", (*i)->getProcess()->getPid(), (*i)->getLWP());
      thread_info &ti = tinfo[*i];
      if (ti.steps == 0) {
         logerror("Thread did not receive any single step events\n");
         myerror = true;
      }
      for (unsigned j = 0; j < NUM_FUNCS; j++) {
         if (j > STOP_FUNC) {
            if (ti.hit_funcs[j] != -1)
            {
               logerror("Stop function was single stepped\n");
               myerror = true;
            }
            continue;
         }
         if (ti.hit_funcs[j] == -1) {
            logerror("Function %d entry was not singlestepped over\n", j);
            myerror = true;
         }
         if (j == BP_FUNC) {
            /**
             * The BP_FUNC function and breakpoint are at the same place.
             * We can legally recieve them in any order.
             **/
            if (ti.breakpoint == -1) {
               logerror("Function did not execute breakpoint\n");
               myerror = true;
            }
            if (!((ti.hit_funcs[j] == j && ti.breakpoint == j+1) ||
                  (ti.hit_funcs[j] == j+1 && ti.breakpoint == j)))
            {
               logerror("Breakpoint or function was executed out of order\n");
               myerror = true;
            }
            continue;
         }
         int expected = 0;
         if (j < BP_FUNC) {
            expected = j;
         }
         else if (j > BP_FUNC) {
            expected = j+1;
         }
         if (j != BP_FUNC && ti.hit_funcs[j] != expected) {
            logerror("Function was executed out of order\n");
            myerror = true;
         }
      }
   }

   Process::removeEventCallback(on_singlestep);
   Process::removeEventCallback(on_breakpoint);

   return 0;
}
