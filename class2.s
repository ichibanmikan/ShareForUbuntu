	.file	"class2.c"
	.text
	.globl	fuzhi
	.type	fuzhi, @function
fuzhi:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	fuzhi, .-fuzhi
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$152, -20(%ebp)
	jmp	.L3
.L5:
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
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	fuzhi
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
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	fuzhi
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
	jne	.L4
	movl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
.L4:
	addl	$1, -20(%ebp)
.L3:
	cmpl	$154, -20(%ebp)
	jle	.L5
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
