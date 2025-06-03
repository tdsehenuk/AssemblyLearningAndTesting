section .data
    msg db "While Loop!", 10
    len equ $ - msg

section .text
    global _start

_start: 
    xor esi, esi

while_loop: 
    cmp esi, 5
    jge end_while

    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len 
    int 0x80

    inc esi
    jmp while_loop


end_while:
    mov eax, 1
    xor ebx, ebx
    int 0x80