#include <stdio.h>

void func(int hi){
    char sth[] = "this is a string\n";
    printf("void func() is called: hi(%d)\n", hi);
    return;
}

int main(){

    printf("helloworld\n");

    int aNum = 0;
    func(aNum);

    return 0;
}


