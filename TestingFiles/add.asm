section .text
    global _start

_start:
    mov eax, 5      ; Load first number into eax
    add eax, 7      ; Add 7 to eax (eax = 5 + 7)

    ; Exit program
    mov ebx, 0      ; exit code 0
    mov eax, 1      ; syscall number for sys_exit
    int 0x80