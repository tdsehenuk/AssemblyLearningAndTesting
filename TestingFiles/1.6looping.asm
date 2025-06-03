section .data
    msg db "Count:", 10   

section .text
    global _start

_start:
    mov ecx, 5           

loop_start:
    mov eax, 4            
    mov ebx, 1            
    mov edx, 7          
    mov esi, msg          
    mov ecx, esi         
    int 0x80       

    mov edi, 5            

print_loop:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 7
    int 0x80

    dec edi
    cmp edi, 0
    jne print_loop

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
