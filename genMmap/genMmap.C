#include<iostream>
#include<sys/mman.h>
#include<stdio.h>
using namespace std;

int main(int argc, char **argv){
    char some[] = {
        0x12, 0x34, 0x56, 0x78};

    printf("0x%x\n", *((int *)some));
    return 0;

    long x1;
    x1 = 65537;

    long addrx = 0x1234567812345678;
    x1 = addrx;

    __asm__("nop\n\t");

    __asm__("mov x0, #0\n\t"
            "mov x1, #65536\n\t"
            "movk x1, #1, lsl #16\n\t"
            "mov x2, #0x7\n\t"
            "mov x3, #0x22\n\t"
            "mov x4, #0\n\t"
            "mov x5, #0\n\t"
            "mov x8, #1058\n\t"
            "mov x8, #215\n\t"
            "svc #0\n\t"
            "brk #0\n\t"
            "nop\n\t"
            );

    __asm__("mov x0, #0\n\t"
            "movk x0, #0, lsl #16\n\t"
            "movk x0, #0, lsl #32\n\t"
            "movk x0, #0, lsl #48\n\t"
            "blr x0\n\t"
           );
#if 0
    std::cout << sizeof(long) << " " << sizeof(void*)<< std::endl;
#endif
    return 0;

    int *addr, len = 4096, prot, flags, fd = 0, offset, pa_offset = 0;

    std::cout << "start mapping..." << std::endl;

    __asm__("nop\n\t");
    //mmap64(addr, len, prot, flags, fd, offset);
    addr = (int *)mmap(NULL, len, PROT_READ, MAP_PRIVATE, fd, pa_offset);
    __asm__("nop\n\t");

    std::cout << "start un-mapping..." << std::endl;
    __asm__("nop\n\t");
    munmap(addr, len);
}
