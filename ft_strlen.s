global _ft_strlen
section .text

_ft_strlen:
mov rax, 0

not_end:
cmp byte[rdi + rax], 0
je end
inc rax
jmp not_end

end:
ret