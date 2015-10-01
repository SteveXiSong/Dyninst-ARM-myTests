#include <stdlib.h>
#include <stdio.h>
#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <sys/user.h>
#include<sys/procfs.h>
#include<sys/uio.h>
#include<sys/syscall.h>
#include<linux/elf.h>
#include<sys/mman.h>


static volatile int global = 3;

#define NUM_FUNCS 5

typedef int (*func_t)(int);
static func_t funcs[NUM_FUNCS];
static int myerror = 0;

int func1(int counter) {
   int i;
   for (i = 0; i < global; i++) {
      counter += i;
   }
   return counter;
}

int func2(int counter) {
   int i;
   for (i = 3; i < global+3; i++) {
      counter += i;
   }
   return counter;
}

int func3(int counter) {
   int i;
   for (i = 6; i < global+6; i++) {
      counter += i;
   }
   return counter;
}

int func4(int counter) {
   int i;
   for (i = 9; i < global+9; i++) {
      counter += i;
   }
   return counter;
}

int func5(int counter) {
   int i;
   for (i = 12; i < global+12; i++) {
      counter += i;
   }
   return counter;
}

void run_all_funcs()
{
   int result = 0;
   result = func1(result);
   result = func2(result);
   result = func3(result);
   result = func4(result);
   result = func5(result);
}


static int threadFunc(int myid, void *data)
{
   data = NULL;

   run_all_funcs();

   return 0;
}

//Basic test for create/attach and exit.
int pc_singlestep_mutatee()
{
    fprintf(stdout, "start mutatee\n");

   int result;
   unsigned i;


   funcs[0] = func1;
   funcs[1] = func2;
   funcs[2] = func3;
   funcs[3] = func4;
   funcs[4] = func5;


   run_all_funcs();

    fprintf(stdout, "finish mutatee\n");
   exit(0);
   return -1;
}

#define ARCH_x86

int main(int c, char**v){
    printf("go!\n");
    pid_t child;
    long orig_eax;
    child = fork();

    if( child == 0 ){
        ptrace(PTRACE_TRACEME, 0, NULL, NULL);
#if defined ARCH_x86
        ///__asm__("brk #0");
        __asm__("mov $1, %rax");
        __asm__("mov $0, %rbx");
        __asm__("int $0x80");
        //__asm__("int $21");
        //__asm__("INT $0x80");
#else

#endif
        pc_singlestep_mutatee();
        printf("after pc_single \n");
        return 0;
        exit(0);
    }
    else{
        int status;
        int start = 0;
        long ins;
        int num=0;

        //elf_gregset_t regs;
        struct user_regs_struct regs;
        struct iovec iovec;
        iovec.iov_base = &regs;
        iovec.iov_len = sizeof(regs);

        while(1) {
            printf("wait\n");
            wait(&status);
            if(WIFEXITED(status)){
                break;
            }

#if defined(ARCH_x86)
            ptrace(PTRACE_GETREGS, child, NULL, &iovec);
            printf("PC: 0x%x\n", regs.rip);
            unsigned long inst = ptrace(PTRACE_PEEKDATA, child, (void*)regs.rip, NULL);
            printf("INST: 0x%x\n", inst);
#else
            ptrace(PTRACE_GETREGSET, child, NT_PRSTATUS, &iovec);
            printf("PC: 0x%x\n", regs[32]);
#endif

            if(num == 0)
                ptrace(PTRACE_SINGLESTEP, child, NULL, NULL);
            num++;
            if(num>10)
                break;


        }
        fprintf(stderr, "finish\n");
    }

    return 0;
}
