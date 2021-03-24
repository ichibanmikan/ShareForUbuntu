	.file	"class2.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	$100, -20(%ebp)
	jmp	.L2
.L4:
	movl	-20(%ebp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	imull	$-100, %eax, %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%ebp)
	movl	-20(%ebp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	-16(%ebp), %eax
	imull	-16(%ebp), %eax
	movl	%eax, %edx
	imull	-16(%ebp), %edx
	movl	-12(%ebp), %eax
	imull	-12(%ebp), %eax
	imull	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	imull	-8(%ebp), %eax
	imull	-8(%ebp), %eax
	addl	%edx, %eax
	cmpl	-20(%ebp), %eax
	jne	.L3
	movl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
.L3:
	addl	$1, -20(%ebp)
.L2:
	cmpl	$999, -20(%ebp)
	jle	.L4
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
