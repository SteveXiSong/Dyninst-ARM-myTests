#include "Symtab.h"
#include "Symbol.h"
#include "Aggregate.h"

using namespace Dyninst;
using namespace SymtabAPI;
Symtab *symtab;

int executeTest()
{
   std::vector<Variable *> vars;
   bool result = symtab->findVariablesByName(vars, std::string("lookup_var"));

   if (!result || !vars.size())
   {
      logerror("[%s:%u] - Unable to find lookup_var\n", 
               __FILE__, __LINE__);
      return FAILED;
   }

   if (vars.size() != 1)
   {
      logerror("[%s:%u] - found too many (%d) lookup_var\n", 
               __FILE__, __LINE__, vars.size());
      return FAILED;
   }

   return PASSED;
}


int main(){
	String fileName = "test_lookup_var_mutatee";
	std::cout << "openning file \"" << fileName << "\"" << std::endl;
	Symtab::openFile(symtab, fileName );

	test_results_t ret= executeTest();
	return ret;
}
