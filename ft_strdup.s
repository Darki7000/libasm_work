global _ft_strdup
section .text
extern _malloc
extern _ft_strlen
extern _ft_strcpy

_ft_strdup:
call _ft_strlen
inc rax
push rdi
mov rdi, rax
call _malloc
pop r8
mov rdi, rax
mov rsi, r8
call _ft_strcpy
ret