global _ft_strcmp
section .text

_ft_strcmp:
mov rax, 0
mov rcx, 0

compare:
mov	dl, byte[rsi + rcx]
cmp dl, 0
je end
mov	bl, byte[rdi + rcx]
cmp bl, 0
je end
cmp bl, dl
jne end
inc rcx
jne compare

end:
xor	rdx, rdx
mov	al, byte[rdi + rcx]
mov	dl, byte[rsi + rcx]
sub rax, rdx
ret