#include<iostream>
#include<sys/mman.h>

int main(int argc, char **argv){

    long sysResult = 0;
    long valX8;
    __asm__(
        "nop\n\t"
        //"mov x8, #1058\n\t"
        "mov x8, #222\n\t"
        "nop\n\t"
        "mov x0, #0\n\t"
        "nop\n\t"
        "mov x1, #10000\n\t"
        "nop\n\t"
        "mov x2, #0x7\n\t"
        "nop\n\t"
        "mov x3, #0x22\n\t"
        "nop\n\t"
        "mov x4, #0\n\t"
        "nop\n\t"
        "mov x5, #0\n\t"
        "nop\n\t"
        "svc #0\n\t"
        "nop\n\t"
        "mov %[out], x0\n\t"
        "mov %[outx8], x8\n\t"
        :[out]"=r"(sysResult),
         [outx8]"=r"(valX8)
    );
    std::cout<< sysResult << std::endl;
    std::cout << "0x" << std::hex << sysResult << std::endl;

    std::cout<< valX8 << std::endl;
    std::cout << "0x" << std::hex << valX8 << std::endl;

    sysResult = (long)mmap(0, 0x10000, 0x7, 0x22, 0, 0);

    std::cout<< sysResult << std::endl;
    std::cout << "0x" << std::hex << sysResult << std::endl;


    return 0;
}
