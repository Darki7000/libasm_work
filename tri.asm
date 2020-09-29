global _start
section .text
_start:
mov rdx, output
mov r8, 1
mov r9, 0

line:
mov byte [rdx], '*'
inc rdx
inc r9
cmp r9, r8
jne line

linedone:
mov byte [rdx], 10
inc rdx
inc r8
mov r9, 0
cmp r8, maxline
jne line

done:
mov rax, 1
mov rdi, 1
mov rsi, output
mov rdx, datasize
syscall
mov rax, 60
xor rdi, rdi
syscall

section .bss
maxline equ 8
datasize equ 44
output: resb datasize