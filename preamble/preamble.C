#include<stdio.h>

int call(int arg0, int arg1, int arg2){
    arg2 = arg1 + arg0;
    __asm__("nop\n\t");
    return arg2;
}

int main(int argc, char **argv){
    __asm__("sub sp, sp, #256\n\t");
    __asm__("sub sp, sp, #48\n\t");
    __asm__("sub sp, sp, #36\n\t");
    __asm__("sub sp, sp, #40\n\t");
    __asm__("blr x8\n\t");

    __asm__("nop\n\t");
    int pass0, pass1, pass2;
    int ret;
    __asm__("nop\n\t");
    pass0 = 0;
    pass1 = 1;
    pass2 = 2;
    ret = call(pass0, pass1, pass2);
    __asm__("nop\n\t");
    printf("%d\n", ret);
    __asm__("nop\n\t");
    return 0;
}
