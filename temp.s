	.file	"pwd.c"
	.section	.rodata
.LC0:
	.string	"1234567"
	.text
.globl verify
	.type	verify, @function
verify:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	$.LC0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	strcmp
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	strcpy
	movl	-12(%ebp), %eax
	leave
	ret
	.size	verify, .-verify
	.section	.rodata
.LC1:
	.string	"enter the password:\t"
.LC2:
	.string	"%s"
.LC3:
	.string	"password incorrect!"
.LC4:
	.string	"congratulation!"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$1056, %esp
	movl	$0, 1052(%esp)
.L5:
	movl	$.LC1, %eax
	movl	%eax, (%esp)
	call	printf
	movl	$.LC2, %eax
	leal	28(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__isoc99_scanf
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	call	verify
	movl	%eax, 1052(%esp)
	cmpl	$0, 1052(%esp)
	je	.L4
	movl	$.LC3, (%esp)
	call	puts
	jmp	.L5
.L4:
	movl	$.LC4, (%esp)
	call	puts
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.4.1-4ubuntu8) 4.4.1"
	.section	.note.GNU-stack,"",@progbits
