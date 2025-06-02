section .data
    msg     db 'Hello, world!', 0xA  
    msg_len equ $ - msg              

section .text
    global _start                   

_start:
    
    mov eax, 4      
    mov ebx, 1       
    mov ecx, msg    
    mov edx, msg_len
    int 0x80       

    mov eax, 1      
    xor ebx, ebx    
    int 0x80        