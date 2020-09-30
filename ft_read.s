global _ft_read
section .text
extern ___error

_ft_read:
mov rax, 0x02000003
syscall
jc error

exit:
ret
error:
push rax
call ___error
pop	rbx
mov	[rax], rbx
mov rax, -1
ret