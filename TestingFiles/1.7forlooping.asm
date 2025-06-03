section .data
    msg db "for loop!", 10
    len equ $ - msg

section .text
    global _start

_start:
    mov ebx, 5          ; loop counter

loop_start:
    cmp ebx, 0
    je end_loop

    mov eax, 4          ; sys_write
    mov ecx, msg        ; pointer to message
    mov edx, len        ; message length
    mov esi, 1          ; stdout
    mov ebx, 1          ; stdout fd for sys_write
    int 0x80

    dec ebx             ; decrement loop counter
    jmp loop_start

end_loop:
    mov eax, 1          ; sys_exit
    xor ebx, ebx
    int 0x80
