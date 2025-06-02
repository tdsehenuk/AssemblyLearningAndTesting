global .section
    global _start

subtract: 
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]
    sub eax, ebx

    pop ebp
    ret

_start:
    push 5
    push 8
    call subtract
    add esp, 8

    mov ebx, eax
    mov eax, 1
    int 0x80