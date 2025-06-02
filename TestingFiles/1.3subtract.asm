section .text
    global _start

_start:
    mov eax, 10
    sub eax, 6

    mov ebx, eax
    mov eax, 1
    int 0x80