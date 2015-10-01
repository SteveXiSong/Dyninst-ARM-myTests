#include <stdio.h>
#include <iostream>
#include <string>
#include <vector>
#include <stdlib.h>

#include "Symtab.h"
#include "Symbol.h"
#include "Function.h"


using namespace Dyninst;
using namespace SymtabAPI;
using namespace std;

int main(int argc, char *argv[]){

    if(argc != 2){
        cout << "testSymtab ";
        cout << "<filename>";
        cout << endl;
        exit(0);
    }

    cout << "file to open: " << argv[1] << endl;
    string file_name(argv[1]);

    vector <Symbol *> syms;
    vector <Dyninst::SymtabAPI::Function *> funcs;

    Symtab *obj = NULL;

		cout <<"start openning file..." <<endl;
    bool err = Symtab::openFile(obj, file_name);

    if( !err ){
        cout << "symtab openfile failed" << endl;
        exit(0);
    }
    else{
        cout << "symtab openfile succeeded" << endl;
    }

    cout << "finding all function names, " << endl;
    if(!obj->getAllFunctions(funcs) ){
        cerr << "failed" << endl;
        exit(0);
    }

    cout << "num of all funcs found: " << funcs.size() << endl;
    for(vector<Dyninst::SymtabAPI::Function *>::iterator it = funcs.begin();
        it != funcs.end();it++){
        (*it)->getSymbols(syms);
        for( vector<Symbol *>::iterator itSym = syms.begin();
                itSym != syms.end(); itSym++){
            cout << "Pretty Name:\t" << (*itSym)->getPrettyName() << endl;
            cout << "Mangled Name:\t" << (*itSym)->getMangledName() << endl;
        }

    }

    cout << "finding function name, \"func\" " << endl;
    if(!obj->findFunctionsByName(funcs, "func")){
        cerr << "find failed" << endl;
        exit(0);
    }

    if(funcs.size() == 0){
        cerr << "no funcs found" << endl;
        exit(0);
    }

    cout << "num of funcs found: " << funcs.size() << endl;
    cout << "funcs[0]" << funcs[0] << endl;

    vector<Symbol *> funcSym;
    cout << "get symbols of func" << endl;
    funcs[0]->getSymbols(funcSym);

    cout << "adding mangled name \"newFuncName\" " << endl;
    funcs[0]->addMangledName("newFuncName", true);

    cout << "finding all symbol names" << endl;

    if( !obj->getAllSymbols(syms) ){
        cerr << "get all symbols failed" << endl;
        exit(0);
    }

    if( syms.size() == 0){
        cerr << "no symbols" << endl;
        exit(0);
    }
    else{
        cout << "size of syms " << syms.size() << endl;
    }

    for( unsigned int i = 0; i < syms.size(); i++){
    //for( int i = 0; i < 1; i++){
        cout << "Pretty Name:\t" << syms[0]->getPrettyName() << endl;
        cout << "Mangled Name:\t" << syms[0]->getMangledName() << endl;
    }

    cout << "finding all function names, " << endl;
    if(!obj->getAllFunctions(funcs) ){
        cerr << "failed" << endl;
        exit(0);
    }

    cout << "num of all funcs found: " << funcs.size() << endl;
    for(vector<Dyninst::SymtabAPI::Function *>::iterator it = funcs.begin();
        it != funcs.end();it++){
        (*it)->getSymbols(syms);
        for( vector<Symbol *>::iterator itSym = syms.begin();
                itSym != syms.end(); itSym++){
            cout << "Pretty Name:\t" << (*itSym)->getPrettyName() << endl;
            cout << "Mangled Name:\t" << (*itSym)->getMangledName() << endl;
        }

    }


    return 0;
}
