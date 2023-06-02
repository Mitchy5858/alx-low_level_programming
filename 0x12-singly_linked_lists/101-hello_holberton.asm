section .data
    format db 'Hello, Holberton', 0

section .text
    extern printf

global main
main:
    sub rsp, 8              ; Align the stack

    mov rdi, format         ; Set the format string
    xor rax, rax            ; Clear rax
    call printf             ; Call printf

    add rsp, 8              ; Restore the stack
    xor eax, eax            ; Clear eax
    ret                     ; Return from main

