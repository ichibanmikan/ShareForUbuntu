	.file	"1001.c"
	.section	.rodata
.LC0:
	.string	"\346\225\264\346\225\260\345\215\240\347\224\250%d\344\270\252\345\255\227\350\212\202\n"
.LC1:
	.string	"i=%d,i*i=%d\n"
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
	andl	$-16, %esp
	subl	$32, %esp
	movl	$.LC0, %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$5, 28(%esp)
	jmp	.L2
.L3:
	movl	28(%esp), %eax
	movl	%eax, %edx
	imull	28(%esp), %edx
	movl	$.LC1, %eax
	movl	%edx, 8(%esp)
	movl	28(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	28(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, 28(%esp)
.L2:
	cmpl	$49999999, 28(%esp)
	jle	.L3
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
