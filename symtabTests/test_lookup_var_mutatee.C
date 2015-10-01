#include<stdio.h>
#include<iostream>

int lookup_var = 4;

int test_lookup_var_mutatee() {
   /*If mutatee should run, things go here.*/
   return 0;
}


int main(){
 	std::cout<<"mutatee running..."<< std::endl; 
	test_lookup_var_mutatee();
	return 0;
}
