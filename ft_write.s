global _ft_write
segment .text
extern ___error

_ft_write:
mov r8, rdx
mov rax, 0x02000004
syscall
jc error

exit:
mov rax, r8
ret

error:
push rax
call ___error
pop	rbx
mov	[rax], rbx
mov rax, -1
ret