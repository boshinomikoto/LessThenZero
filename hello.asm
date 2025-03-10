global _start

section .data
message: db "less than zero", 10
len equ $ -message
section .text

_start:
    mov rbx, 10
    mov rsi, -10
    add rsi, rbx
    js escape
    mov rdi, rsi
    jmp exit

escape:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, len
    syscall

exit:
    mov rax, 60
    syscall
