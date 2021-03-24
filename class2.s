	.file	"class2.c"
	.text
	.globl	jisuan
	.type	jisuan, @function
jisuan:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	imull	$-100, %eax, %eax
	movl	%eax, %ecx
	addl	8(%ebp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %ecx
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
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	imull	-4(%ebp), %eax
	movl	%eax, %edx
	imull	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	imull	-8(%ebp), %eax
	imull	-8(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	imull	-12(%ebp), %eax
	imull	-12(%ebp), %eax
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	jisuan, .-jisuan
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
	subl	$20, %esp
	movl	$152, -12(%ebp)
	jmp	.L3
.L5:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	jisuan
	movl	%eax, -8(%ebp)
	movl	-12(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	.L4
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
.L4:
	addl	$1, -12(%ebp)
.L3:
	cmpl	$154, -12(%ebp)
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
