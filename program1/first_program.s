global _start

section .data
	message db "First Program!!"
	length equ $-message ;put length equal to the length of the message

section .text
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, message
	mov rdx, length
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
