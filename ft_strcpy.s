global _ft_strcpy
section .text

_ft_strcpy:
mov rax, 0
mov rcx, 0
cmp byte[rsi], 0
je null

copy:
mov	dl, byte[rsi + rcx]
mov	byte[rdi + rcx], dl
inc rcx
cmp byte[rsi + rcx], 0
jne copy
mov byte[rdi + rcx], 0

end:
mov rax, rdi
ret

null:
mov byte[rdi], 0
mov rax, rdi
ret