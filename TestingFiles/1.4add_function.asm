section .text
    global _start


add: 
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    add eax, [ebp+12] 

    pop ebp 
    ret  

_start:
    push 8
    push 5
    call add 
    add esp, 8

    mov ebx, eax
    mov eax, 1
    int 0x80