
bomb:     file format elf32-i386


Disassembly of section .init:

08048724 <_init>:
 8048724:	53                   	push   %ebx
 8048725:	83 ec 08             	sub    $0x8,%esp
 8048728:	e8 00 00 00 00       	call   804872d <_init+0x9>
 804872d:	5b                   	pop    %ebx
 804872e:	81 c3 c7 38 00 00    	add    $0x38c7,%ebx
 8048734:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804873a:	85 c0                	test   %eax,%eax
 804873c:	74 05                	je     8048743 <_init+0x1f>
 804873e:	e8 ed 00 00 00       	call   8048830 <__gmon_start__@plt>
 8048743:	e8 78 02 00 00       	call   80489c0 <frame_dummy>
 8048748:	e8 e3 18 00 00       	call   804a030 <__do_global_ctors_aux>
 804874d:	83 c4 08             	add    $0x8,%esp
 8048750:	5b                   	pop    %ebx
 8048751:	c3                   	ret    

Disassembly of section .plt:

08048760 <read@plt-0x10>:
 8048760:	ff 35 f8 bf 04 08    	pushl  0x804bff8
 8048766:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 804876c:	00 00                	add    %al,(%eax)
	...

08048770 <read@plt>:
 8048770:	ff 25 00 c0 04 08    	jmp    *0x804c000
 8048776:	68 00 00 00 00       	push   $0x0
 804877b:	e9 e0 ff ff ff       	jmp    8048760 <_init+0x3c>

08048780 <fflush@plt>:
 8048780:	ff 25 04 c0 04 08    	jmp    *0x804c004
 8048786:	68 08 00 00 00       	push   $0x8
 804878b:	e9 d0 ff ff ff       	jmp    8048760 <_init+0x3c>

08048790 <fgets@plt>:
 8048790:	ff 25 08 c0 04 08    	jmp    *0x804c008
 8048796:	68 10 00 00 00       	push   $0x10
 804879b:	e9 c0 ff ff ff       	jmp    8048760 <_init+0x3c>

080487a0 <signal@plt>:
 80487a0:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 80487a6:	68 18 00 00 00       	push   $0x18
 80487ab:	e9 b0 ff ff ff       	jmp    8048760 <_init+0x3c>

080487b0 <sleep@plt>:
 80487b0:	ff 25 10 c0 04 08    	jmp    *0x804c010
 80487b6:	68 20 00 00 00       	push   $0x20
 80487bb:	e9 a0 ff ff ff       	jmp    8048760 <_init+0x3c>

080487c0 <alarm@plt>:
 80487c0:	ff 25 14 c0 04 08    	jmp    *0x804c014
 80487c6:	68 28 00 00 00       	push   $0x28
 80487cb:	e9 90 ff ff ff       	jmp    8048760 <_init+0x3c>

080487d0 <__stack_chk_fail@plt>:
 80487d0:	ff 25 18 c0 04 08    	jmp    *0x804c018
 80487d6:	68 30 00 00 00       	push   $0x30
 80487db:	e9 80 ff ff ff       	jmp    8048760 <_init+0x3c>

080487e0 <strcpy@plt>:
 80487e0:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 80487e6:	68 38 00 00 00       	push   $0x38
 80487eb:	e9 70 ff ff ff       	jmp    8048760 <_init+0x3c>

080487f0 <getenv@plt>:
 80487f0:	ff 25 20 c0 04 08    	jmp    *0x804c020
 80487f6:	68 40 00 00 00       	push   $0x40
 80487fb:	e9 60 ff ff ff       	jmp    8048760 <_init+0x3c>

08048800 <puts@plt>:
 8048800:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8048806:	68 48 00 00 00       	push   $0x48
 804880b:	e9 50 ff ff ff       	jmp    8048760 <_init+0x3c>

08048810 <__memmove_chk@plt>:
 8048810:	ff 25 28 c0 04 08    	jmp    *0x804c028
 8048816:	68 50 00 00 00       	push   $0x50
 804881b:	e9 40 ff ff ff       	jmp    8048760 <_init+0x3c>

08048820 <__memcpy_chk@plt>:
 8048820:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 8048826:	68 58 00 00 00       	push   $0x58
 804882b:	e9 30 ff ff ff       	jmp    8048760 <_init+0x3c>

08048830 <__gmon_start__@plt>:
 8048830:	ff 25 30 c0 04 08    	jmp    *0x804c030
 8048836:	68 60 00 00 00       	push   $0x60
 804883b:	e9 20 ff ff ff       	jmp    8048760 <_init+0x3c>

08048840 <exit@plt>:
 8048840:	ff 25 34 c0 04 08    	jmp    *0x804c034
 8048846:	68 68 00 00 00       	push   $0x68
 804884b:	e9 10 ff ff ff       	jmp    8048760 <_init+0x3c>

08048850 <__libc_start_main@plt>:
 8048850:	ff 25 38 c0 04 08    	jmp    *0x804c038
 8048856:	68 70 00 00 00       	push   $0x70
 804885b:	e9 00 ff ff ff       	jmp    8048760 <_init+0x3c>

08048860 <write@plt>:
 8048860:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 8048866:	68 78 00 00 00       	push   $0x78
 804886b:	e9 f0 fe ff ff       	jmp    8048760 <_init+0x3c>

08048870 <__isoc99_sscanf@plt>:
 8048870:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8048876:	68 80 00 00 00       	push   $0x80
 804887b:	e9 e0 fe ff ff       	jmp    8048760 <_init+0x3c>

08048880 <fopen@plt>:
 8048880:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8048886:	68 88 00 00 00       	push   $0x88
 804888b:	e9 d0 fe ff ff       	jmp    8048760 <_init+0x3c>

08048890 <__errno_location@plt>:
 8048890:	ff 25 48 c0 04 08    	jmp    *0x804c048
 8048896:	68 90 00 00 00       	push   $0x90
 804889b:	e9 c0 fe ff ff       	jmp    8048760 <_init+0x3c>

080488a0 <__printf_chk@plt>:
 80488a0:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 80488a6:	68 98 00 00 00       	push   $0x98
 80488ab:	e9 b0 fe ff ff       	jmp    8048760 <_init+0x3c>

080488b0 <socket@plt>:
 80488b0:	ff 25 50 c0 04 08    	jmp    *0x804c050
 80488b6:	68 a0 00 00 00       	push   $0xa0
 80488bb:	e9 a0 fe ff ff       	jmp    8048760 <_init+0x3c>

080488c0 <__fprintf_chk@plt>:
 80488c0:	ff 25 54 c0 04 08    	jmp    *0x804c054
 80488c6:	68 a8 00 00 00       	push   $0xa8
 80488cb:	e9 90 fe ff ff       	jmp    8048760 <_init+0x3c>

080488d0 <gethostbyname@plt>:
 80488d0:	ff 25 58 c0 04 08    	jmp    *0x804c058
 80488d6:	68 b0 00 00 00       	push   $0xb0
 80488db:	e9 80 fe ff ff       	jmp    8048760 <_init+0x3c>

080488e0 <strtol@plt>:
 80488e0:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 80488e6:	68 b8 00 00 00       	push   $0xb8
 80488eb:	e9 70 fe ff ff       	jmp    8048760 <_init+0x3c>

080488f0 <connect@plt>:
 80488f0:	ff 25 60 c0 04 08    	jmp    *0x804c060
 80488f6:	68 c0 00 00 00       	push   $0xc0
 80488fb:	e9 60 fe ff ff       	jmp    8048760 <_init+0x3c>

08048900 <close@plt>:
 8048900:	ff 25 64 c0 04 08    	jmp    *0x804c064
 8048906:	68 c8 00 00 00       	push   $0xc8
 804890b:	e9 50 fe ff ff       	jmp    8048760 <_init+0x3c>

08048910 <__ctype_b_loc@plt>:
 8048910:	ff 25 68 c0 04 08    	jmp    *0x804c068
 8048916:	68 d0 00 00 00       	push   $0xd0
 804891b:	e9 40 fe ff ff       	jmp    8048760 <_init+0x3c>

08048920 <__sprintf_chk@plt>:
 8048920:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 8048926:	68 d8 00 00 00       	push   $0xd8
 804892b:	e9 30 fe ff ff       	jmp    8048760 <_init+0x3c>

Disassembly of section .text:

08048930 <_start>:
 8048930:	31 ed                	xor    %ebp,%ebp
 8048932:	5e                   	pop    %esi
 8048933:	89 e1                	mov    %esp,%ecx
 8048935:	83 e4 f0             	and    $0xfffffff0,%esp
 8048938:	50                   	push   %eax
 8048939:	54                   	push   %esp
 804893a:	52                   	push   %edx
 804893b:	68 20 a0 04 08       	push   $0x804a020
 8048940:	68 b0 9f 04 08       	push   $0x8049fb0
 8048945:	51                   	push   %ecx
 8048946:	56                   	push   %esi
 8048947:	68 e4 89 04 08       	push   $0x80489e4
 804894c:	e8 ff fe ff ff       	call   8048850 <__libc_start_main@plt>
 8048951:	f4                   	hlt    
 8048952:	90                   	nop
 8048953:	90                   	nop
 8048954:	90                   	nop
 8048955:	90                   	nop
 8048956:	90                   	nop
 8048957:	90                   	nop
 8048958:	90                   	nop
 8048959:	90                   	nop
 804895a:	90                   	nop
 804895b:	90                   	nop
 804895c:	90                   	nop
 804895d:	90                   	nop
 804895e:	90                   	nop
 804895f:	90                   	nop

08048960 <__do_global_dtors_aux>:
 8048960:	55                   	push   %ebp
 8048961:	89 e5                	mov    %esp,%ebp
 8048963:	53                   	push   %ebx
 8048964:	83 ec 04             	sub    $0x4,%esp
 8048967:	80 3d c4 c3 04 08 00 	cmpb   $0x0,0x804c3c4
 804896e:	75 3f                	jne    80489af <__do_global_dtors_aux+0x4f>
 8048970:	a1 c8 c3 04 08       	mov    0x804c3c8,%eax
 8048975:	bb 20 bf 04 08       	mov    $0x804bf20,%ebx
 804897a:	81 eb 1c bf 04 08    	sub    $0x804bf1c,%ebx
 8048980:	c1 fb 02             	sar    $0x2,%ebx
 8048983:	83 eb 01             	sub    $0x1,%ebx
 8048986:	39 d8                	cmp    %ebx,%eax
 8048988:	73 1e                	jae    80489a8 <__do_global_dtors_aux+0x48>
 804898a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048990:	83 c0 01             	add    $0x1,%eax
 8048993:	a3 c8 c3 04 08       	mov    %eax,0x804c3c8
 8048998:	ff 14 85 1c bf 04 08 	call   *0x804bf1c(,%eax,4)
 804899f:	a1 c8 c3 04 08       	mov    0x804c3c8,%eax
 80489a4:	39 d8                	cmp    %ebx,%eax
 80489a6:	72 e8                	jb     8048990 <__do_global_dtors_aux+0x30>
 80489a8:	c6 05 c4 c3 04 08 01 	movb   $0x1,0x804c3c4
 80489af:	83 c4 04             	add    $0x4,%esp
 80489b2:	5b                   	pop    %ebx
 80489b3:	5d                   	pop    %ebp
 80489b4:	c3                   	ret    
 80489b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80489b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080489c0 <frame_dummy>:
 80489c0:	55                   	push   %ebp
 80489c1:	89 e5                	mov    %esp,%ebp
 80489c3:	83 ec 18             	sub    $0x18,%esp
 80489c6:	a1 24 bf 04 08       	mov    0x804bf24,%eax
 80489cb:	85 c0                	test   %eax,%eax
 80489cd:	74 12                	je     80489e1 <frame_dummy+0x21>
 80489cf:	b8 00 00 00 00       	mov    $0x0,%eax
 80489d4:	85 c0                	test   %eax,%eax
 80489d6:	74 09                	je     80489e1 <frame_dummy+0x21>
 80489d8:	c7 04 24 24 bf 04 08 	movl   $0x804bf24,(%esp)
 80489df:	ff d0                	call   *%eax
 80489e1:	c9                   	leave  
 80489e2:	c3                   	ret    
 80489e3:	90                   	nop

080489e4 <main>:
 80489e4:	55                   	push   %ebp
 80489e5:	89 e5                	mov    %esp,%ebp
 80489e7:	53                   	push   %ebx
 80489e8:	83 e4 f0             	and    $0xfffffff0,%esp
 80489eb:	83 ec 10             	sub    $0x10,%esp
 80489ee:	8b 45 08             	mov    0x8(%ebp),%eax
 80489f1:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 80489f4:	83 f8 01             	cmp    $0x1,%eax
 80489f7:	75 0c                	jne    8048a05 <main+0x21>
 80489f9:	a1 a4 c3 04 08       	mov    0x804c3a4,%eax
 80489fe:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 8048a03:	eb 74                	jmp    8048a79 <main+0x95>
 8048a05:	83 f8 02             	cmp    $0x2,%eax
 8048a08:	75 49                	jne    8048a53 <main+0x6f>
 8048a0a:	c7 44 24 04 80 a0 04 	movl   $0x804a080,0x4(%esp)
 8048a11:	08 
 8048a12:	8b 43 04             	mov    0x4(%ebx),%eax
 8048a15:	89 04 24             	mov    %eax,(%esp)
 8048a18:	e8 63 fe ff ff       	call   8048880 <fopen@plt>
 8048a1d:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 8048a22:	85 c0                	test   %eax,%eax
 8048a24:	75 53                	jne    8048a79 <main+0x95>
 8048a26:	8b 43 04             	mov    0x4(%ebx),%eax
 8048a29:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048a2d:	8b 03                	mov    (%ebx),%eax
 8048a2f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048a33:	c7 44 24 04 82 a0 04 	movl   $0x804a082,0x4(%esp)
 8048a3a:	08 
 8048a3b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048a42:	e8 59 fe ff ff       	call   80488a0 <__printf_chk@plt>
 8048a47:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a4e:	e8 ed fd ff ff       	call   8048840 <exit@plt>
 8048a53:	8b 03                	mov    (%ebx),%eax
 8048a55:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048a59:	c7 44 24 04 9f a0 04 	movl   $0x804a09f,0x4(%esp)
 8048a60:	08 
 8048a61:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048a68:	e8 33 fe ff ff       	call   80488a0 <__printf_chk@plt>
 8048a6d:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a74:	e8 c7 fd ff ff       	call   8048840 <exit@plt>
 8048a79:	e8 ed 05 00 00       	call   804906b <initialize_bomb>
 8048a7e:	c7 04 24 04 a1 04 08 	movl   $0x804a104,(%esp)
 8048a85:	e8 76 fd ff ff       	call   8048800 <puts@plt>
 8048a8a:	c7 04 24 40 a1 04 08 	movl   $0x804a140,(%esp)
 8048a91:	e8 6a fd ff ff       	call   8048800 <puts@plt>
 8048a96:	e8 92 06 00 00       	call   804912d <read_line>
 8048a9b:	89 04 24             	mov    %eax,(%esp)
 8048a9e:	e8 ad 00 00 00       	call   8048b50 <phase_1>
 8048aa3:	e8 e3 07 00 00       	call   804928b <phase_defused>
 8048aa8:	c7 04 24 6c a1 04 08 	movl   $0x804a16c,(%esp)
 8048aaf:	e8 4c fd ff ff       	call   8048800 <puts@plt>
 8048ab4:	e8 74 06 00 00       	call   804912d <read_line>
 8048ab9:	89 04 24             	mov    %eax,(%esp)
 8048abc:	e8 b3 00 00 00       	call   8048b74 <phase_2>
 8048ac1:	e8 c5 07 00 00       	call   804928b <phase_defused>
 8048ac6:	c7 04 24 b9 a0 04 08 	movl   $0x804a0b9,(%esp)
 8048acd:	e8 2e fd ff ff       	call   8048800 <puts@plt>
 8048ad2:	e8 56 06 00 00       	call   804912d <read_line>
 8048ad7:	89 04 24             	mov    %eax,(%esp)
 8048ada:	e8 e5 00 00 00       	call   8048bc4 <phase_3>
 8048adf:	e8 a7 07 00 00       	call   804928b <phase_defused>
 8048ae4:	c7 04 24 d7 a0 04 08 	movl   $0x804a0d7,(%esp)
 8048aeb:	e8 10 fd ff ff       	call   8048800 <puts@plt>
 8048af0:	e8 38 06 00 00       	call   804912d <read_line>
 8048af5:	89 04 24             	mov    %eax,(%esp)
 8048af8:	e8 e2 01 00 00       	call   8048cdf <phase_4>
 8048afd:	e8 89 07 00 00       	call   804928b <phase_defused>
 8048b02:	c7 04 24 98 a1 04 08 	movl   $0x804a198,(%esp)
 8048b09:	e8 f2 fc ff ff       	call   8048800 <puts@plt>
 8048b0e:	e8 1a 06 00 00       	call   804912d <read_line>
 8048b13:	89 04 24             	mov    %eax,(%esp)
 8048b16:	e8 26 02 00 00       	call   8048d41 <phase_5>
 8048b1b:	e8 6b 07 00 00       	call   804928b <phase_defused>
 8048b20:	c7 04 24 e6 a0 04 08 	movl   $0x804a0e6,(%esp)
 8048b27:	e8 d4 fc ff ff       	call   8048800 <puts@plt>
 8048b2c:	e8 fc 05 00 00       	call   804912d <read_line>
 8048b31:	89 04 24             	mov    %eax,(%esp)
 8048b34:	e8 88 02 00 00       	call   8048dc1 <phase_6>
 8048b39:	e8 4d 07 00 00       	call   804928b <phase_defused>
 8048b3e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b43:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048b46:	c9                   	leave  
 8048b47:	c3                   	ret    
 8048b48:	90                   	nop
 8048b49:	90                   	nop
 8048b4a:	90                   	nop
 8048b4b:	90                   	nop
 8048b4c:	90                   	nop
 8048b4d:	90                   	nop
 8048b4e:	90                   	nop
 8048b4f:	90                   	nop

08048b50 <phase_1>:
 8048b50:	83 ec 1c             	sub    $0x1c,%esp
 8048b53:	c7 44 24 04 bc a1 04 	movl   $0x804a1bc,0x4(%esp)
 8048b5a:	08 
 8048b5b:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048b5f:	89 04 24             	mov    %eax,(%esp)
 8048b62:	e8 8d 04 00 00       	call   8048ff4 <strings_not_equal>
 8048b67:	85 c0                	test   %eax,%eax
 8048b69:	74 05                	je     8048b70 <phase_1+0x20>
 8048b6b:	e8 96 05 00 00       	call   8049106 <explode_bomb>
 8048b70:	83 c4 1c             	add    $0x1c,%esp
 8048b73:	c3                   	ret    

08048b74 <phase_2>:
 8048b74:	56                   	push   %esi
 8048b75:	53                   	push   %ebx
 8048b76:	83 ec 34             	sub    $0x34,%esp
 8048b79:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048b7d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048b81:	8b 44 24 40          	mov    0x40(%esp),%eax
 8048b85:	89 04 24             	mov    %eax,(%esp)
 8048b88:	e8 ae 06 00 00       	call   804923b <read_six_numbers>
 8048b8d:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 8048b92:	75 07                	jne    8048b9b <phase_2+0x27>
 8048b94:	83 7c 24 1c 01       	cmpl   $0x1,0x1c(%esp)
 8048b99:	74 05                	je     8048ba0 <phase_2+0x2c>
 8048b9b:	e8 66 05 00 00       	call   8049106 <explode_bomb>
 8048ba0:	8d 5c 24 20          	lea    0x20(%esp),%ebx
 8048ba4:	8d 74 24 30          	lea    0x30(%esp),%esi
 8048ba8:	8b 43 f8             	mov    -0x8(%ebx),%eax
 8048bab:	03 43 fc             	add    -0x4(%ebx),%eax
 8048bae:	39 03                	cmp    %eax,(%ebx)
 8048bb0:	74 05                	je     8048bb7 <phase_2+0x43>
 8048bb2:	e8 4f 05 00 00       	call   8049106 <explode_bomb>
 8048bb7:	83 c3 04             	add    $0x4,%ebx
 8048bba:	39 f3                	cmp    %esi,%ebx
 8048bbc:	75 ea                	jne    8048ba8 <phase_2+0x34>
 8048bbe:	83 c4 34             	add    $0x34,%esp
 8048bc1:	5b                   	pop    %ebx
 8048bc2:	5e                   	pop    %esi
 8048bc3:	c3                   	ret    

08048bc4 <phase_3>:
 8048bc4:	83 ec 2c             	sub    $0x2c,%esp
 8048bc7:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048bcb:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048bcf:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048bd3:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048bd7:	c7 44 24 04 ab a3 04 	movl   $0x804a3ab,0x4(%esp)
 8048bde:	08 
 8048bdf:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048be3:	89 04 24             	mov    %eax,(%esp)
 8048be6:	e8 85 fc ff ff       	call   8048870 <__isoc99_sscanf@plt>
 8048beb:	83 f8 01             	cmp    $0x1,%eax
 8048bee:	7f 05                	jg     8048bf5 <phase_3+0x31>
 8048bf0:	e8 11 05 00 00       	call   8049106 <explode_bomb>
 8048bf5:	83 7c 24 18 07       	cmpl   $0x7,0x18(%esp)
 8048bfa:	77 66                	ja     8048c62 <phase_3+0x9e>
 8048bfc:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048c00:	ff 24 85 18 a2 04 08 	jmp    *0x804a218(,%eax,4)
 8048c07:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c0c:	eb 05                	jmp    8048c13 <phase_3+0x4f>
 8048c0e:	b8 1b 02 00 00       	mov    $0x21b,%eax
 8048c13:	2d 8f 03 00 00       	sub    $0x38f,%eax
 8048c18:	eb 05                	jmp    8048c1f <phase_3+0x5b>
 8048c1a:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c1f:	05 9d 00 00 00       	add    $0x9d,%eax
 8048c24:	eb 05                	jmp    8048c2b <phase_3+0x67>
 8048c26:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c2b:	2d dc 03 00 00       	sub    $0x3dc,%eax
 8048c30:	eb 05                	jmp    8048c37 <phase_3+0x73>
 8048c32:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c37:	05 dc 03 00 00       	add    $0x3dc,%eax
 8048c3c:	eb 05                	jmp    8048c43 <phase_3+0x7f>
 8048c3e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c43:	2d dc 03 00 00       	sub    $0x3dc,%eax
 8048c48:	eb 05                	jmp    8048c4f <phase_3+0x8b>
 8048c4a:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c4f:	05 dc 03 00 00       	add    $0x3dc,%eax
 8048c54:	eb 05                	jmp    8048c5b <phase_3+0x97>
 8048c56:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c5b:	2d dc 03 00 00       	sub    $0x3dc,%eax
 8048c60:	eb 0a                	jmp    8048c6c <phase_3+0xa8>
 8048c62:	e8 9f 04 00 00       	call   8049106 <explode_bomb>
 8048c67:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c6c:	83 7c 24 18 05       	cmpl   $0x5,0x18(%esp)
 8048c71:	7f 06                	jg     8048c79 <phase_3+0xb5>
 8048c73:	3b 44 24 1c          	cmp    0x1c(%esp),%eax
 8048c77:	74 05                	je     8048c7e <phase_3+0xba>
 8048c79:	e8 88 04 00 00       	call   8049106 <explode_bomb>
 8048c7e:	83 c4 2c             	add    $0x2c,%esp
 8048c81:	c3                   	ret    

08048c82 <func4>:
 8048c82:	83 ec 1c             	sub    $0x1c,%esp
 8048c85:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 8048c89:	89 74 24 14          	mov    %esi,0x14(%esp)
 8048c8d:	89 7c 24 18          	mov    %edi,0x18(%esp)
 8048c91:	8b 74 24 20          	mov    0x20(%esp),%esi
 8048c95:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 8048c99:	85 f6                	test   %esi,%esi
 8048c9b:	7e 2b                	jle    8048cc8 <func4+0x46>
 8048c9d:	83 fe 01             	cmp    $0x1,%esi
 8048ca0:	74 2b                	je     8048ccd <func4+0x4b>
 8048ca2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048ca6:	8d 46 ff             	lea    -0x1(%esi),%eax
 8048ca9:	89 04 24             	mov    %eax,(%esp)
 8048cac:	e8 d1 ff ff ff       	call   8048c82 <func4>
 8048cb1:	8d 3c 18             	lea    (%eax,%ebx,1),%edi
 8048cb4:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048cb8:	83 ee 02             	sub    $0x2,%esi
 8048cbb:	89 34 24             	mov    %esi,(%esp)
 8048cbe:	e8 bf ff ff ff       	call   8048c82 <func4>
 8048cc3:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
 8048cc6:	eb 05                	jmp    8048ccd <func4+0x4b>
 8048cc8:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048ccd:	89 d8                	mov    %ebx,%eax
 8048ccf:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8048cd3:	8b 74 24 14          	mov    0x14(%esp),%esi
 8048cd7:	8b 7c 24 18          	mov    0x18(%esp),%edi
 8048cdb:	83 c4 1c             	add    $0x1c,%esp
 8048cde:	c3                   	ret    

08048cdf <phase_4>:
 8048cdf:	83 ec 2c             	sub    $0x2c,%esp
 8048ce2:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048ce6:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048cea:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048cee:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048cf2:	c7 44 24 04 ab a3 04 	movl   $0x804a3ab,0x4(%esp)
 8048cf9:	08 
 8048cfa:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048cfe:	89 04 24             	mov    %eax,(%esp)
 8048d01:	e8 6a fb ff ff       	call   8048870 <__isoc99_sscanf@plt>
 8048d06:	83 f8 02             	cmp    $0x2,%eax
 8048d09:	75 0e                	jne    8048d19 <phase_4+0x3a>
 8048d0b:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048d0f:	83 f8 01             	cmp    $0x1,%eax
 8048d12:	7e 05                	jle    8048d19 <phase_4+0x3a>
 8048d14:	83 f8 04             	cmp    $0x4,%eax
 8048d17:	7e 05                	jle    8048d1e <phase_4+0x3f>
 8048d19:	e8 e8 03 00 00       	call   8049106 <explode_bomb>
 8048d1e:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048d22:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d26:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 8048d2d:	e8 50 ff ff ff       	call   8048c82 <func4>
 8048d32:	3b 44 24 1c          	cmp    0x1c(%esp),%eax
 8048d36:	74 05                	je     8048d3d <phase_4+0x5e>
 8048d38:	e8 c9 03 00 00       	call   8049106 <explode_bomb>
 8048d3d:	83 c4 2c             	add    $0x2c,%esp
 8048d40:	c3                   	ret    

08048d41 <phase_5>:
 8048d41:	53                   	push   %ebx
 8048d42:	83 ec 28             	sub    $0x28,%esp
 8048d45:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 8048d49:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048d4f:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8048d53:	31 c0                	xor    %eax,%eax
 8048d55:	89 1c 24             	mov    %ebx,(%esp)
 8048d58:	e8 7e 02 00 00       	call   8048fdb <string_length>
 8048d5d:	83 f8 06             	cmp    $0x6,%eax
 8048d60:	74 05                	je     8048d67 <phase_5+0x26>
 8048d62:	e8 9f 03 00 00       	call   8049106 <explode_bomb>
 8048d67:	b8 00 00 00 00       	mov    $0x0,%eax
 8048d6c:	0f be 14 03          	movsbl (%ebx,%eax,1),%edx
 8048d70:	83 e2 0f             	and    $0xf,%edx
 8048d73:	0f b6 92 38 a2 04 08 	movzbl 0x804a238(%edx),%edx
 8048d7a:	88 54 04 15          	mov    %dl,0x15(%esp,%eax,1)
 8048d7e:	83 c0 01             	add    $0x1,%eax
 8048d81:	83 f8 06             	cmp    $0x6,%eax
 8048d84:	75 e6                	jne    8048d6c <phase_5+0x2b>
 8048d86:	c6 44 24 1b 00       	movb   $0x0,0x1b(%esp)
 8048d8b:	c7 44 24 04 0e a2 04 	movl   $0x804a20e,0x4(%esp)
 8048d92:	08 
 8048d93:	8d 44 24 15          	lea    0x15(%esp),%eax
 8048d97:	89 04 24             	mov    %eax,(%esp)
 8048d9a:	e8 55 02 00 00       	call   8048ff4 <strings_not_equal>
 8048d9f:	85 c0                	test   %eax,%eax
 8048da1:	74 05                	je     8048da8 <phase_5+0x67>
 8048da3:	e8 5e 03 00 00       	call   8049106 <explode_bomb>
 8048da8:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048dac:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048db3:	74 05                	je     8048dba <phase_5+0x79>
 8048db5:	e8 16 fa ff ff       	call   80487d0 <__stack_chk_fail@plt>
 8048dba:	83 c4 28             	add    $0x28,%esp
 8048dbd:	5b                   	pop    %ebx
 8048dbe:	66 90                	xchg   %ax,%ax
 8048dc0:	c3                   	ret    

08048dc1 <phase_6>:
 8048dc1:	56                   	push   %esi
 8048dc2:	53                   	push   %ebx
 8048dc3:	83 ec 44             	sub    $0x44,%esp
 8048dc6:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048dca:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048dce:	8b 44 24 50          	mov    0x50(%esp),%eax
 8048dd2:	89 04 24             	mov    %eax,(%esp)
 8048dd5:	e8 61 04 00 00       	call   804923b <read_six_numbers>
 8048dda:	be 00 00 00 00       	mov    $0x0,%esi
 8048ddf:	8b 44 b4 10          	mov    0x10(%esp,%esi,4),%eax
 8048de3:	83 e8 01             	sub    $0x1,%eax
 8048de6:	83 f8 05             	cmp    $0x5,%eax
 8048de9:	76 05                	jbe    8048df0 <phase_6+0x2f>
 8048deb:	e8 16 03 00 00       	call   8049106 <explode_bomb>
 8048df0:	83 c6 01             	add    $0x1,%esi
 8048df3:	83 fe 06             	cmp    $0x6,%esi
 8048df6:	74 33                	je     8048e2b <phase_6+0x6a>
 8048df8:	89 f3                	mov    %esi,%ebx
 8048dfa:	8b 44 9c 10          	mov    0x10(%esp,%ebx,4),%eax
 8048dfe:	39 44 b4 0c          	cmp    %eax,0xc(%esp,%esi,4)
 8048e02:	75 05                	jne    8048e09 <phase_6+0x48>
 8048e04:	e8 fd 02 00 00       	call   8049106 <explode_bomb>
 8048e09:	83 c3 01             	add    $0x1,%ebx
 8048e0c:	83 fb 05             	cmp    $0x5,%ebx
 8048e0f:	7e e9                	jle    8048dfa <phase_6+0x39>
 8048e11:	eb cc                	jmp    8048ddf <phase_6+0x1e>
 8048e13:	8b 52 08             	mov    0x8(%edx),%edx
 8048e16:	83 c0 01             	add    $0x1,%eax
 8048e19:	39 c8                	cmp    %ecx,%eax
 8048e1b:	75 f6                	jne    8048e13 <phase_6+0x52>
 8048e1d:	89 54 b4 28          	mov    %edx,0x28(%esp,%esi,4)
 8048e21:	83 c3 01             	add    $0x1,%ebx
 8048e24:	83 fb 06             	cmp    $0x6,%ebx
 8048e27:	75 07                	jne    8048e30 <phase_6+0x6f>
 8048e29:	eb 1c                	jmp    8048e47 <phase_6+0x86>
 8048e2b:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048e30:	89 de                	mov    %ebx,%esi
 8048e32:	8b 4c 9c 10          	mov    0x10(%esp,%ebx,4),%ecx
 8048e36:	b8 01 00 00 00       	mov    $0x1,%eax
 8048e3b:	ba 3c c1 04 08       	mov    $0x804c13c,%edx
 8048e40:	83 f9 01             	cmp    $0x1,%ecx
 8048e43:	7f ce                	jg     8048e13 <phase_6+0x52>
 8048e45:	eb d6                	jmp    8048e1d <phase_6+0x5c>
 8048e47:	8b 5c 24 28          	mov    0x28(%esp),%ebx
 8048e4b:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8048e4f:	89 43 08             	mov    %eax,0x8(%ebx)
 8048e52:	8b 54 24 30          	mov    0x30(%esp),%edx
 8048e56:	89 50 08             	mov    %edx,0x8(%eax)
 8048e59:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048e5d:	89 42 08             	mov    %eax,0x8(%edx)
 8048e60:	8b 54 24 38          	mov    0x38(%esp),%edx
 8048e64:	89 50 08             	mov    %edx,0x8(%eax)
 8048e67:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 8048e6b:	89 42 08             	mov    %eax,0x8(%edx)
 8048e6e:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8048e75:	be 05 00 00 00       	mov    $0x5,%esi
 8048e7a:	8b 43 08             	mov    0x8(%ebx),%eax
 8048e7d:	8b 10                	mov    (%eax),%edx
 8048e7f:	39 13                	cmp    %edx,(%ebx)
 8048e81:	7e 05                	jle    8048e88 <phase_6+0xc7>
 8048e83:	e8 7e 02 00 00       	call   8049106 <explode_bomb>
 8048e88:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048e8b:	83 ee 01             	sub    $0x1,%esi
 8048e8e:	75 ea                	jne    8048e7a <phase_6+0xb9>
 8048e90:	83 c4 44             	add    $0x44,%esp
 8048e93:	5b                   	pop    %ebx
 8048e94:	5e                   	pop    %esi
 8048e95:	c3                   	ret    

08048e96 <fun7>:
 8048e96:	53                   	push   %ebx
 8048e97:	83 ec 18             	sub    $0x18,%esp
 8048e9a:	8b 54 24 20          	mov    0x20(%esp),%edx
 8048e9e:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 8048ea2:	85 d2                	test   %edx,%edx
 8048ea4:	74 37                	je     8048edd <fun7+0x47>
 8048ea6:	8b 1a                	mov    (%edx),%ebx
 8048ea8:	39 cb                	cmp    %ecx,%ebx
 8048eaa:	7e 13                	jle    8048ebf <fun7+0x29>
 8048eac:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048eb0:	8b 42 04             	mov    0x4(%edx),%eax
 8048eb3:	89 04 24             	mov    %eax,(%esp)
 8048eb6:	e8 db ff ff ff       	call   8048e96 <fun7>
 8048ebb:	01 c0                	add    %eax,%eax
 8048ebd:	eb 23                	jmp    8048ee2 <fun7+0x4c>
 8048ebf:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ec4:	39 cb                	cmp    %ecx,%ebx
 8048ec6:	74 1a                	je     8048ee2 <fun7+0x4c>
 8048ec8:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048ecc:	8b 42 08             	mov    0x8(%edx),%eax
 8048ecf:	89 04 24             	mov    %eax,(%esp)
 8048ed2:	e8 bf ff ff ff       	call   8048e96 <fun7>
 8048ed7:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048edb:	eb 05                	jmp    8048ee2 <fun7+0x4c>
 8048edd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048ee2:	83 c4 18             	add    $0x18,%esp
 8048ee5:	5b                   	pop    %ebx
 8048ee6:	c3                   	ret    

08048ee7 <secret_phase>:
 8048ee7:	53                   	push   %ebx
 8048ee8:	83 ec 18             	sub    $0x18,%esp
 8048eeb:	e8 3d 02 00 00       	call   804912d <read_line>
 8048ef0:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 8048ef7:	00 
 8048ef8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048eff:	00 
 8048f00:	89 04 24             	mov    %eax,(%esp)
 8048f03:	e8 d8 f9 ff ff       	call   80488e0 <strtol@plt>
 8048f08:	89 c3                	mov    %eax,%ebx
 8048f0a:	8d 40 ff             	lea    -0x1(%eax),%eax
 8048f0d:	3d e8 03 00 00       	cmp    $0x3e8,%eax
 8048f12:	76 05                	jbe    8048f19 <secret_phase+0x32>
 8048f14:	e8 ed 01 00 00       	call   8049106 <explode_bomb>
 8048f19:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048f1d:	c7 04 24 88 c0 04 08 	movl   $0x804c088,(%esp)
 8048f24:	e8 6d ff ff ff       	call   8048e96 <fun7>
 8048f29:	83 f8 07             	cmp    $0x7,%eax
 8048f2c:	74 05                	je     8048f33 <secret_phase+0x4c>
 8048f2e:	e8 d3 01 00 00       	call   8049106 <explode_bomb>
 8048f33:	c7 04 24 e8 a1 04 08 	movl   $0x804a1e8,(%esp)
 8048f3a:	e8 c1 f8 ff ff       	call   8048800 <puts@plt>
 8048f3f:	e8 47 03 00 00       	call   804928b <phase_defused>
 8048f44:	83 c4 18             	add    $0x18,%esp
 8048f47:	5b                   	pop    %ebx
 8048f48:	c3                   	ret    
 8048f49:	90                   	nop
 8048f4a:	90                   	nop
 8048f4b:	90                   	nop
 8048f4c:	90                   	nop
 8048f4d:	90                   	nop
 8048f4e:	90                   	nop
 8048f4f:	90                   	nop

08048f50 <sig_handler>:
 8048f50:	83 ec 1c             	sub    $0x1c,%esp
 8048f53:	c7 04 24 48 a2 04 08 	movl   $0x804a248,(%esp)
 8048f5a:	e8 a1 f8 ff ff       	call   8048800 <puts@plt>
 8048f5f:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048f66:	e8 45 f8 ff ff       	call   80487b0 <sleep@plt>
 8048f6b:	c7 44 24 04 0a a3 04 	movl   $0x804a30a,0x4(%esp)
 8048f72:	08 
 8048f73:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048f7a:	e8 21 f9 ff ff       	call   80488a0 <__printf_chk@plt>
 8048f7f:	a1 c0 c3 04 08       	mov    0x804c3c0,%eax
 8048f84:	89 04 24             	mov    %eax,(%esp)
 8048f87:	e8 f4 f7 ff ff       	call   8048780 <fflush@plt>
 8048f8c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048f93:	e8 18 f8 ff ff       	call   80487b0 <sleep@plt>
 8048f98:	c7 04 24 12 a3 04 08 	movl   $0x804a312,(%esp)
 8048f9f:	e8 5c f8 ff ff       	call   8048800 <puts@plt>
 8048fa4:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 8048fab:	e8 90 f8 ff ff       	call   8048840 <exit@plt>

08048fb0 <invalid_phase>:
 8048fb0:	83 ec 1c             	sub    $0x1c,%esp
 8048fb3:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048fb7:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048fbb:	c7 44 24 04 1a a3 04 	movl   $0x804a31a,0x4(%esp)
 8048fc2:	08 
 8048fc3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048fca:	e8 d1 f8 ff ff       	call   80488a0 <__printf_chk@plt>
 8048fcf:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048fd6:	e8 65 f8 ff ff       	call   8048840 <exit@plt>

08048fdb <string_length>:
 8048fdb:	8b 54 24 04          	mov    0x4(%esp),%edx
 8048fdf:	b8 00 00 00 00       	mov    $0x0,%eax
 8048fe4:	80 3a 00             	cmpb   $0x0,(%edx)
 8048fe7:	74 09                	je     8048ff2 <string_length+0x17>
 8048fe9:	83 c0 01             	add    $0x1,%eax
 8048fec:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 8048ff0:	75 f7                	jne    8048fe9 <string_length+0xe>
 8048ff2:	f3 c3                	repz ret 

08048ff4 <strings_not_equal>:
 8048ff4:	83 ec 10             	sub    $0x10,%esp
 8048ff7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048ffb:	89 74 24 08          	mov    %esi,0x8(%esp)
 8048fff:	89 7c 24 0c          	mov    %edi,0xc(%esp)
 8049003:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 8049007:	8b 74 24 18          	mov    0x18(%esp),%esi
 804900b:	89 1c 24             	mov    %ebx,(%esp)
 804900e:	e8 c8 ff ff ff       	call   8048fdb <string_length>
 8049013:	89 c7                	mov    %eax,%edi
 8049015:	89 34 24             	mov    %esi,(%esp)
 8049018:	e8 be ff ff ff       	call   8048fdb <string_length>
 804901d:	ba 01 00 00 00       	mov    $0x1,%edx
 8049022:	39 c7                	cmp    %eax,%edi
 8049024:	75 33                	jne    8049059 <strings_not_equal+0x65>
 8049026:	0f b6 03             	movzbl (%ebx),%eax
 8049029:	b2 00                	mov    $0x0,%dl
 804902b:	84 c0                	test   %al,%al
 804902d:	74 2a                	je     8049059 <strings_not_equal+0x65>
 804902f:	b2 01                	mov    $0x1,%dl
 8049031:	3a 06                	cmp    (%esi),%al
 8049033:	75 24                	jne    8049059 <strings_not_equal+0x65>
 8049035:	b8 00 00 00 00       	mov    $0x0,%eax
 804903a:	eb 08                	jmp    8049044 <strings_not_equal+0x50>
 804903c:	83 c0 01             	add    $0x1,%eax
 804903f:	3a 14 06             	cmp    (%esi,%eax,1),%dl
 8049042:	75 10                	jne    8049054 <strings_not_equal+0x60>
 8049044:	0f b6 54 03 01       	movzbl 0x1(%ebx,%eax,1),%edx
 8049049:	84 d2                	test   %dl,%dl
 804904b:	75 ef                	jne    804903c <strings_not_equal+0x48>
 804904d:	ba 00 00 00 00       	mov    $0x0,%edx
 8049052:	eb 05                	jmp    8049059 <strings_not_equal+0x65>
 8049054:	ba 01 00 00 00       	mov    $0x1,%edx
 8049059:	89 d0                	mov    %edx,%eax
 804905b:	8b 5c 24 04          	mov    0x4(%esp),%ebx
 804905f:	8b 74 24 08          	mov    0x8(%esp),%esi
 8049063:	8b 7c 24 0c          	mov    0xc(%esp),%edi
 8049067:	83 c4 10             	add    $0x10,%esp
 804906a:	c3                   	ret    

0804906b <initialize_bomb>:
 804906b:	83 ec 1c             	sub    $0x1c,%esp
 804906e:	c7 44 24 04 50 8f 04 	movl   $0x8048f50,0x4(%esp)
 8049075:	08 
 8049076:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804907d:	e8 1e f7 ff ff       	call   80487a0 <signal@plt>
 8049082:	83 c4 1c             	add    $0x1c,%esp
 8049085:	c3                   	ret    

08049086 <initialize_bomb_solve>:
 8049086:	f3 c3                	repz ret 

08049088 <blank_line>:
 8049088:	56                   	push   %esi
 8049089:	53                   	push   %ebx
 804908a:	83 ec 04             	sub    $0x4,%esp
 804908d:	8b 74 24 10          	mov    0x10(%esp),%esi
 8049091:	eb 14                	jmp    80490a7 <blank_line+0x1f>
 8049093:	e8 78 f8 ff ff       	call   8048910 <__ctype_b_loc@plt>
 8049098:	83 c6 01             	add    $0x1,%esi
 804909b:	0f be db             	movsbl %bl,%ebx
 804909e:	8b 00                	mov    (%eax),%eax
 80490a0:	f6 44 58 01 20       	testb  $0x20,0x1(%eax,%ebx,2)
 80490a5:	74 0e                	je     80490b5 <blank_line+0x2d>
 80490a7:	0f b6 1e             	movzbl (%esi),%ebx
 80490aa:	84 db                	test   %bl,%bl
 80490ac:	75 e5                	jne    8049093 <blank_line+0xb>
 80490ae:	b8 01 00 00 00       	mov    $0x1,%eax
 80490b3:	eb 05                	jmp    80490ba <blank_line+0x32>
 80490b5:	b8 00 00 00 00       	mov    $0x0,%eax
 80490ba:	83 c4 04             	add    $0x4,%esp
 80490bd:	5b                   	pop    %ebx
 80490be:	5e                   	pop    %esi
 80490bf:	c3                   	ret    

080490c0 <skip>:
 80490c0:	53                   	push   %ebx
 80490c1:	83 ec 18             	sub    $0x18,%esp
 80490c4:	a1 d0 c3 04 08       	mov    0x804c3d0,%eax
 80490c9:	89 44 24 08          	mov    %eax,0x8(%esp)
 80490cd:	c7 44 24 04 50 00 00 	movl   $0x50,0x4(%esp)
 80490d4:	00 
 80490d5:	a1 cc c3 04 08       	mov    0x804c3cc,%eax
 80490da:	8d 04 80             	lea    (%eax,%eax,4),%eax
 80490dd:	c1 e0 04             	shl    $0x4,%eax
 80490e0:	05 e0 c3 04 08       	add    $0x804c3e0,%eax
 80490e5:	89 04 24             	mov    %eax,(%esp)
 80490e8:	e8 a3 f6 ff ff       	call   8048790 <fgets@plt>
 80490ed:	89 c3                	mov    %eax,%ebx
 80490ef:	85 c0                	test   %eax,%eax
 80490f1:	74 0c                	je     80490ff <skip+0x3f>
 80490f3:	89 04 24             	mov    %eax,(%esp)
 80490f6:	e8 8d ff ff ff       	call   8049088 <blank_line>
 80490fb:	85 c0                	test   %eax,%eax
 80490fd:	75 c5                	jne    80490c4 <skip+0x4>
 80490ff:	89 d8                	mov    %ebx,%eax
 8049101:	83 c4 18             	add    $0x18,%esp
 8049104:	5b                   	pop    %ebx
 8049105:	c3                   	ret    

08049106 <explode_bomb>:
 8049106:	83 ec 1c             	sub    $0x1c,%esp
 8049109:	c7 04 24 2b a3 04 08 	movl   $0x804a32b,(%esp)
 8049110:	e8 eb f6 ff ff       	call   8048800 <puts@plt>
 8049115:	c7 04 24 34 a3 04 08 	movl   $0x804a334,(%esp)
 804911c:	e8 df f6 ff ff       	call   8048800 <puts@plt>
 8049121:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049128:	e8 13 f7 ff ff       	call   8048840 <exit@plt>

0804912d <read_line>:
 804912d:	83 ec 2c             	sub    $0x2c,%esp
 8049130:	89 5c 24 20          	mov    %ebx,0x20(%esp)
 8049134:	89 74 24 24          	mov    %esi,0x24(%esp)
 8049138:	89 7c 24 28          	mov    %edi,0x28(%esp)
 804913c:	e8 7f ff ff ff       	call   80490c0 <skip>
 8049141:	85 c0                	test   %eax,%eax
 8049143:	75 6c                	jne    80491b1 <read_line+0x84>
 8049145:	a1 a4 c3 04 08       	mov    0x804c3a4,%eax
 804914a:	39 05 d0 c3 04 08    	cmp    %eax,0x804c3d0
 8049150:	75 18                	jne    804916a <read_line+0x3d>
 8049152:	c7 04 24 4b a3 04 08 	movl   $0x804a34b,(%esp)
 8049159:	e8 a2 f6 ff ff       	call   8048800 <puts@plt>
 804915e:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049165:	e8 d6 f6 ff ff       	call   8048840 <exit@plt>
 804916a:	c7 04 24 69 a3 04 08 	movl   $0x804a369,(%esp)
 8049171:	e8 7a f6 ff ff       	call   80487f0 <getenv@plt>
 8049176:	85 c0                	test   %eax,%eax
 8049178:	74 0c                	je     8049186 <read_line+0x59>
 804917a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049181:	e8 ba f6 ff ff       	call   8048840 <exit@plt>
 8049186:	a1 a4 c3 04 08       	mov    0x804c3a4,%eax
 804918b:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 8049190:	e8 2b ff ff ff       	call   80490c0 <skip>
 8049195:	85 c0                	test   %eax,%eax
 8049197:	75 18                	jne    80491b1 <read_line+0x84>
 8049199:	c7 04 24 4b a3 04 08 	movl   $0x804a34b,(%esp)
 80491a0:	e8 5b f6 ff ff       	call   8048800 <puts@plt>
 80491a5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80491ac:	e8 8f f6 ff ff       	call   8048840 <exit@plt>
 80491b1:	8b 15 cc c3 04 08    	mov    0x804c3cc,%edx
 80491b7:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 80491ba:	c1 e3 04             	shl    $0x4,%ebx
 80491bd:	81 c3 e0 c3 04 08    	add    $0x804c3e0,%ebx
 80491c3:	89 df                	mov    %ebx,%edi
 80491c5:	b8 00 00 00 00       	mov    $0x0,%eax
 80491ca:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80491cf:	f2 ae                	repnz scas %es:(%edi),%al
 80491d1:	f7 d1                	not    %ecx
 80491d3:	83 e9 01             	sub    $0x1,%ecx
 80491d6:	83 f9 4e             	cmp    $0x4e,%ecx
 80491d9:	7e 37                	jle    8049212 <read_line+0xe5>
 80491db:	c7 04 24 74 a3 04 08 	movl   $0x804a374,(%esp)
 80491e2:	e8 19 f6 ff ff       	call   8048800 <puts@plt>
 80491e7:	a1 cc c3 04 08       	mov    0x804c3cc,%eax
 80491ec:	8d 50 01             	lea    0x1(%eax),%edx
 80491ef:	89 15 cc c3 04 08    	mov    %edx,0x804c3cc
 80491f5:	6b c0 50             	imul   $0x50,%eax,%eax
 80491f8:	05 e0 c3 04 08       	add    $0x804c3e0,%eax
 80491fd:	ba 8f a3 04 08       	mov    $0x804a38f,%edx
 8049202:	b9 04 00 00 00       	mov    $0x4,%ecx
 8049207:	89 c7                	mov    %eax,%edi
 8049209:	89 d6                	mov    %edx,%esi
 804920b:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804920d:	e8 f4 fe ff ff       	call   8049106 <explode_bomb>
 8049212:	8d 04 92             	lea    (%edx,%edx,4),%eax
 8049215:	c1 e0 04             	shl    $0x4,%eax
 8049218:	c6 84 01 df c3 04 08 	movb   $0x0,0x804c3df(%ecx,%eax,1)
 804921f:	00 
 8049220:	83 c2 01             	add    $0x1,%edx
 8049223:	89 15 cc c3 04 08    	mov    %edx,0x804c3cc
 8049229:	89 d8                	mov    %ebx,%eax
 804922b:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 804922f:	8b 74 24 24          	mov    0x24(%esp),%esi
 8049233:	8b 7c 24 28          	mov    0x28(%esp),%edi
 8049237:	83 c4 2c             	add    $0x2c,%esp
 804923a:	c3                   	ret    

0804923b <read_six_numbers>:
 804923b:	83 ec 2c             	sub    $0x2c,%esp
 804923e:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049242:	8d 50 14             	lea    0x14(%eax),%edx
 8049245:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8049249:	8d 50 10             	lea    0x10(%eax),%edx
 804924c:	89 54 24 18          	mov    %edx,0x18(%esp)
 8049250:	8d 50 0c             	lea    0xc(%eax),%edx
 8049253:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049257:	8d 50 08             	lea    0x8(%eax),%edx
 804925a:	89 54 24 10          	mov    %edx,0x10(%esp)
 804925e:	8d 50 04             	lea    0x4(%eax),%edx
 8049261:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049265:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049269:	c7 44 24 04 9f a3 04 	movl   $0x804a39f,0x4(%esp)
 8049270:	08 
 8049271:	8b 44 24 30          	mov    0x30(%esp),%eax
 8049275:	89 04 24             	mov    %eax,(%esp)
 8049278:	e8 f3 f5 ff ff       	call   8048870 <__isoc99_sscanf@plt>
 804927d:	83 f8 05             	cmp    $0x5,%eax
 8049280:	7f 05                	jg     8049287 <read_six_numbers+0x4c>
 8049282:	e8 7f fe ff ff       	call   8049106 <explode_bomb>
 8049287:	83 c4 2c             	add    $0x2c,%esp
 804928a:	c3                   	ret    

0804928b <phase_defused>:
 804928b:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
 8049291:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049297:	89 44 24 7c          	mov    %eax,0x7c(%esp)
 804929b:	31 c0                	xor    %eax,%eax
 804929d:	83 3d cc c3 04 08 06 	cmpl   $0x6,0x804c3cc
 80492a4:	75 72                	jne    8049318 <phase_defused+0x8d>
 80492a6:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 80492aa:	89 44 24 10          	mov    %eax,0x10(%esp)
 80492ae:	8d 44 24 28          	lea    0x28(%esp),%eax
 80492b2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80492b6:	8d 44 24 24          	lea    0x24(%esp),%eax
 80492ba:	89 44 24 08          	mov    %eax,0x8(%esp)
 80492be:	c7 44 24 04 b1 a3 04 	movl   $0x804a3b1,0x4(%esp)
 80492c5:	08 
 80492c6:	c7 04 24 d0 c4 04 08 	movl   $0x804c4d0,(%esp)
 80492cd:	e8 9e f5 ff ff       	call   8048870 <__isoc99_sscanf@plt>
 80492d2:	83 f8 03             	cmp    $0x3,%eax
 80492d5:	75 35                	jne    804930c <phase_defused+0x81>
 80492d7:	c7 44 24 04 ba a3 04 	movl   $0x804a3ba,0x4(%esp)
 80492de:	08 
 80492df:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 80492e3:	89 04 24             	mov    %eax,(%esp)
 80492e6:	e8 09 fd ff ff       	call   8048ff4 <strings_not_equal>
 80492eb:	85 c0                	test   %eax,%eax
 80492ed:	75 1d                	jne    804930c <phase_defused+0x81>
 80492ef:	c7 04 24 80 a2 04 08 	movl   $0x804a280,(%esp)
 80492f6:	e8 05 f5 ff ff       	call   8048800 <puts@plt>
 80492fb:	c7 04 24 a8 a2 04 08 	movl   $0x804a2a8,(%esp)
 8049302:	e8 f9 f4 ff ff       	call   8048800 <puts@plt>
 8049307:	e8 db fb ff ff       	call   8048ee7 <secret_phase>
 804930c:	c7 04 24 e0 a2 04 08 	movl   $0x804a2e0,(%esp)
 8049313:	e8 e8 f4 ff ff       	call   8048800 <puts@plt>
 8049318:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 804931c:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049323:	74 05                	je     804932a <phase_defused+0x9f>
 8049325:	e8 a6 f4 ff ff       	call   80487d0 <__stack_chk_fail@plt>
 804932a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 8049330:	c3                   	ret    
 8049331:	90                   	nop
 8049332:	90                   	nop
 8049333:	90                   	nop
 8049334:	90                   	nop
 8049335:	90                   	nop
 8049336:	90                   	nop
 8049337:	90                   	nop
 8049338:	90                   	nop
 8049339:	90                   	nop
 804933a:	90                   	nop
 804933b:	90                   	nop
 804933c:	90                   	nop
 804933d:	90                   	nop
 804933e:	90                   	nop
 804933f:	90                   	nop

08049340 <rio_readlineb>:
 8049340:	55                   	push   %ebp
 8049341:	57                   	push   %edi
 8049342:	56                   	push   %esi
 8049343:	53                   	push   %ebx
 8049344:	83 ec 3c             	sub    $0x3c,%esp
 8049347:	89 c3                	mov    %eax,%ebx
 8049349:	83 f9 01             	cmp    $0x1,%ecx
 804934c:	0f 86 bb 00 00 00    	jbe    804940d <rio_readlineb+0xcd>
 8049352:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 8049356:	89 54 24 18          	mov    %edx,0x18(%esp)
 804935a:	bd 01 00 00 00       	mov    $0x1,%ebp
 804935f:	8d 78 0c             	lea    0xc(%eax),%edi
 8049362:	eb 3c                	jmp    80493a0 <rio_readlineb+0x60>
 8049364:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 804936b:	00 
 804936c:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049370:	8b 03                	mov    (%ebx),%eax
 8049372:	89 04 24             	mov    %eax,(%esp)
 8049375:	e8 f6 f3 ff ff       	call   8048770 <read@plt>
 804937a:	89 43 04             	mov    %eax,0x4(%ebx)
 804937d:	85 c0                	test   %eax,%eax
 804937f:	79 14                	jns    8049395 <rio_readlineb+0x55>
 8049381:	e8 0a f5 ff ff       	call   8048890 <__errno_location@plt>
 8049386:	83 38 04             	cmpl   $0x4,(%eax)
 8049389:	74 15                	je     80493a0 <rio_readlineb+0x60>
 804938b:	90                   	nop
 804938c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049390:	e9 a0 00 00 00       	jmp    8049435 <rio_readlineb+0xf5>
 8049395:	85 c0                	test   %eax,%eax
 8049397:	0f 84 9f 00 00 00    	je     804943c <rio_readlineb+0xfc>
 804939d:	89 7b 08             	mov    %edi,0x8(%ebx)
 80493a0:	8b 73 04             	mov    0x4(%ebx),%esi
 80493a3:	85 f6                	test   %esi,%esi
 80493a5:	7e bd                	jle    8049364 <rio_readlineb+0x24>
 80493a7:	85 f6                	test   %esi,%esi
 80493a9:	0f 85 96 00 00 00    	jne    8049445 <rio_readlineb+0x105>
 80493af:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 80493b6:	00 
 80493b7:	89 74 24 08          	mov    %esi,0x8(%esp)
 80493bb:	8b 43 08             	mov    0x8(%ebx),%eax
 80493be:	89 44 24 04          	mov    %eax,0x4(%esp)
 80493c2:	8d 44 24 2f          	lea    0x2f(%esp),%eax
 80493c6:	89 04 24             	mov    %eax,(%esp)
 80493c9:	e8 52 f4 ff ff       	call   8048820 <__memcpy_chk@plt>
 80493ce:	01 73 08             	add    %esi,0x8(%ebx)
 80493d1:	29 73 04             	sub    %esi,0x4(%ebx)
 80493d4:	83 fe 01             	cmp    $0x1,%esi
 80493d7:	75 18                	jne    80493f1 <rio_readlineb+0xb1>
 80493d9:	0f b6 44 24 2f       	movzbl 0x2f(%esp),%eax
 80493de:	8b 54 24 18          	mov    0x18(%esp),%edx
 80493e2:	88 02                	mov    %al,(%edx)
 80493e4:	83 c2 01             	add    $0x1,%edx
 80493e7:	89 54 24 18          	mov    %edx,0x18(%esp)
 80493eb:	3c 0a                	cmp    $0xa,%al
 80493ed:	75 13                	jne    8049402 <rio_readlineb+0xc2>
 80493ef:	eb 25                	jmp    8049416 <rio_readlineb+0xd6>
 80493f1:	89 e8                	mov    %ebp,%eax
 80493f3:	85 f6                	test   %esi,%esi
 80493f5:	75 28                	jne    804941f <rio_readlineb+0xdf>
 80493f7:	83 f8 01             	cmp    $0x1,%eax
 80493fa:	75 1a                	jne    8049416 <rio_readlineb+0xd6>
 80493fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049400:	eb 24                	jmp    8049426 <rio_readlineb+0xe6>
 8049402:	83 c5 01             	add    $0x1,%ebp
 8049405:	3b 6c 24 1c          	cmp    0x1c(%esp),%ebp
 8049409:	75 95                	jne    80493a0 <rio_readlineb+0x60>
 804940b:	eb 09                	jmp    8049416 <rio_readlineb+0xd6>
 804940d:	89 54 24 18          	mov    %edx,0x18(%esp)
 8049411:	bd 01 00 00 00       	mov    $0x1,%ebp
 8049416:	8b 44 24 18          	mov    0x18(%esp),%eax
 804941a:	c6 00 00             	movb   $0x0,(%eax)
 804941d:	eb 0c                	jmp    804942b <rio_readlineb+0xeb>
 804941f:	bd ff ff ff ff       	mov    $0xffffffff,%ebp
 8049424:	eb 05                	jmp    804942b <rio_readlineb+0xeb>
 8049426:	bd 00 00 00 00       	mov    $0x0,%ebp
 804942b:	89 e8                	mov    %ebp,%eax
 804942d:	83 c4 3c             	add    $0x3c,%esp
 8049430:	5b                   	pop    %ebx
 8049431:	5e                   	pop    %esi
 8049432:	5f                   	pop    %edi
 8049433:	5d                   	pop    %ebp
 8049434:	c3                   	ret    
 8049435:	be ff ff ff ff       	mov    $0xffffffff,%esi
 804943a:	eb 05                	jmp    8049441 <rio_readlineb+0x101>
 804943c:	be 00 00 00 00       	mov    $0x0,%esi
 8049441:	89 e8                	mov    %ebp,%eax
 8049443:	eb ae                	jmp    80493f3 <rio_readlineb+0xb3>
 8049445:	8b 43 08             	mov    0x8(%ebx),%eax
 8049448:	0f b6 00             	movzbl (%eax),%eax
 804944b:	88 44 24 2f          	mov    %al,0x2f(%esp)
 804944f:	83 43 08 01          	addl   $0x1,0x8(%ebx)
 8049453:	83 6b 04 01          	subl   $0x1,0x4(%ebx)
 8049457:	eb 80                	jmp    80493d9 <rio_readlineb+0x99>

08049459 <sigalrm_handler>:
 8049459:	83 ec 1c             	sub    $0x1c,%esp
 804945c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8049463:	00 
 8049464:	c7 44 24 08 c8 a3 04 	movl   $0x804a3c8,0x8(%esp)
 804946b:	08 
 804946c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049473:	00 
 8049474:	a1 a0 c3 04 08       	mov    0x804c3a0,%eax
 8049479:	89 04 24             	mov    %eax,(%esp)
 804947c:	e8 3f f4 ff ff       	call   80488c0 <__fprintf_chk@plt>
 8049481:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049488:	e8 b3 f3 ff ff       	call   8048840 <exit@plt>

0804948d <submitr>:
 804948d:	55                   	push   %ebp
 804948e:	57                   	push   %edi
 804948f:	56                   	push   %esi
 8049490:	53                   	push   %ebx
 8049491:	81 ec 7c a0 00 00    	sub    $0xa07c,%esp
 8049497:	8b 9c 24 90 a0 00 00 	mov    0xa090(%esp),%ebx
 804949e:	8b 84 24 98 a0 00 00 	mov    0xa098(%esp),%eax
 80494a5:	89 44 24 30          	mov    %eax,0x30(%esp)
 80494a9:	8b 94 24 9c a0 00 00 	mov    0xa09c(%esp),%edx
 80494b0:	89 54 24 34          	mov    %edx,0x34(%esp)
 80494b4:	8b 8c 24 a0 a0 00 00 	mov    0xa0a0(%esp),%ecx
 80494bb:	89 4c 24 38          	mov    %ecx,0x38(%esp)
 80494bf:	8b ac 24 a4 a0 00 00 	mov    0xa0a4(%esp),%ebp
 80494c6:	8b 84 24 a8 a0 00 00 	mov    0xa0a8(%esp),%eax
 80494cd:	89 44 24 28          	mov    %eax,0x28(%esp)
 80494d1:	65 8b 15 14 00 00 00 	mov    %gs:0x14,%edx
 80494d8:	89 94 24 6c a0 00 00 	mov    %edx,0xa06c(%esp)
 80494df:	31 d2                	xor    %edx,%edx
 80494e1:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
 80494e8:	00 
 80494e9:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80494f0:	00 
 80494f1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80494f8:	00 
 80494f9:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049500:	e8 ab f3 ff ff       	call   80488b0 <socket@plt>
 8049505:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 8049509:	85 c0                	test   %eax,%eax
 804950b:	79 52                	jns    804955f <submitr+0xd2>
 804950d:	8b 4c 24 28          	mov    0x28(%esp),%ecx
 8049511:	c7 01 45 72 72 6f    	movl   $0x6f727245,(%ecx)
 8049517:	c7 41 04 72 3a 20 43 	movl   $0x43203a72,0x4(%ecx)
 804951e:	c7 41 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%ecx)
 8049525:	c7 41 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%ecx)
 804952c:	c7 41 10 61 62 6c 65 	movl   $0x656c6261,0x10(%ecx)
 8049533:	c7 41 14 20 74 6f 20 	movl   $0x206f7420,0x14(%ecx)
 804953a:	c7 41 18 63 72 65 61 	movl   $0x61657263,0x18(%ecx)
 8049541:	c7 41 1c 74 65 20 73 	movl   $0x73206574,0x1c(%ecx)
 8049548:	c7 41 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%ecx)
 804954f:	66 c7 41 24 74 00    	movw   $0x74,0x24(%ecx)
 8049555:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804955a:	e9 e8 06 00 00       	jmp    8049c47 <submitr+0x7ba>
 804955f:	89 1c 24             	mov    %ebx,(%esp)
 8049562:	e8 69 f3 ff ff       	call   80488d0 <gethostbyname@plt>
 8049567:	85 c0                	test   %eax,%eax
 8049569:	75 70                	jne    80495db <submitr+0x14e>
 804956b:	8b 44 24 28          	mov    0x28(%esp),%eax
 804956f:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049575:	c7 40 04 72 3a 20 44 	movl   $0x44203a72,0x4(%eax)
 804957c:	c7 40 08 4e 53 20 69 	movl   $0x6920534e,0x8(%eax)
 8049583:	c7 40 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%eax)
 804958a:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049591:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049598:	c7 40 18 72 65 73 6f 	movl   $0x6f736572,0x18(%eax)
 804959f:	c7 40 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%eax)
 80495a6:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 80495ad:	c7 40 24 65 72 20 61 	movl   $0x61207265,0x24(%eax)
 80495b4:	c7 40 28 64 64 72 65 	movl   $0x65726464,0x28(%eax)
 80495bb:	66 c7 40 2c 73 73    	movw   $0x7373,0x2c(%eax)
 80495c1:	c6 40 2e 00          	movb   $0x0,0x2e(%eax)
 80495c5:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 80495c9:	89 04 24             	mov    %eax,(%esp)
 80495cc:	e8 2f f3 ff ff       	call   8048900 <close@plt>
 80495d1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80495d6:	e9 6c 06 00 00       	jmp    8049c47 <submitr+0x7ba>
 80495db:	8d 9c 24 54 a0 00 00 	lea    0xa054(%esp),%ebx
 80495e2:	c7 84 24 54 a0 00 00 	movl   $0x0,0xa054(%esp)
 80495e9:	00 00 00 00 
 80495ed:	c7 84 24 58 a0 00 00 	movl   $0x0,0xa058(%esp)
 80495f4:	00 00 00 00 
 80495f8:	c7 84 24 5c a0 00 00 	movl   $0x0,0xa05c(%esp)
 80495ff:	00 00 00 00 
 8049603:	c7 84 24 60 a0 00 00 	movl   $0x0,0xa060(%esp)
 804960a:	00 00 00 00 
 804960e:	66 c7 84 24 54 a0 00 	movw   $0x2,0xa054(%esp)
 8049615:	00 02 00 
 8049618:	c7 44 24 0c 0c 00 00 	movl   $0xc,0xc(%esp)
 804961f:	00 
 8049620:	8b 50 0c             	mov    0xc(%eax),%edx
 8049623:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049627:	8b 40 10             	mov    0x10(%eax),%eax
 804962a:	8b 00                	mov    (%eax),%eax
 804962c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049630:	8d 84 24 58 a0 00 00 	lea    0xa058(%esp),%eax
 8049637:	89 04 24             	mov    %eax,(%esp)
 804963a:	e8 d1 f1 ff ff       	call   8048810 <__memmove_chk@plt>
 804963f:	0f b7 84 24 94 a0 00 	movzwl 0xa094(%esp),%eax
 8049646:	00 
 8049647:	66 c1 c8 08          	ror    $0x8,%ax
 804964b:	66 89 84 24 56 a0 00 	mov    %ax,0xa056(%esp)
 8049652:	00 
 8049653:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 804965a:	00 
 804965b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804965f:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049663:	89 04 24             	mov    %eax,(%esp)
 8049666:	e8 85 f2 ff ff       	call   80488f0 <connect@plt>
 804966b:	85 c0                	test   %eax,%eax
 804966d:	79 62                	jns    80496d1 <submitr+0x244>
 804966f:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049673:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049679:	c7 42 04 72 3a 20 55 	movl   $0x55203a72,0x4(%edx)
 8049680:	c7 42 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%edx)
 8049687:	c7 42 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%edx)
 804968e:	c7 42 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%edx)
 8049695:	c7 42 14 6e 65 63 74 	movl   $0x7463656e,0x14(%edx)
 804969c:	c7 42 18 20 74 6f 20 	movl   $0x206f7420,0x18(%edx)
 80496a3:	c7 42 1c 74 68 65 20 	movl   $0x20656874,0x1c(%edx)
 80496aa:	c7 42 20 73 65 72 76 	movl   $0x76726573,0x20(%edx)
 80496b1:	66 c7 42 24 65 72    	movw   $0x7265,0x24(%edx)
 80496b7:	c6 42 26 00          	movb   $0x0,0x26(%edx)
 80496bb:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 80496bf:	89 04 24             	mov    %eax,(%esp)
 80496c2:	e8 39 f2 ff ff       	call   8048900 <close@plt>
 80496c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80496cc:	e9 76 05 00 00       	jmp    8049c47 <submitr+0x7ba>
 80496d1:	ba ff ff ff ff       	mov    $0xffffffff,%edx
 80496d6:	89 ef                	mov    %ebp,%edi
 80496d8:	b8 00 00 00 00       	mov    $0x0,%eax
 80496dd:	89 d1                	mov    %edx,%ecx
 80496df:	f2 ae                	repnz scas %es:(%edi),%al
 80496e1:	89 cb                	mov    %ecx,%ebx
 80496e3:	f7 d3                	not    %ebx
 80496e5:	8b 7c 24 30          	mov    0x30(%esp),%edi
 80496e9:	89 d1                	mov    %edx,%ecx
 80496eb:	f2 ae                	repnz scas %es:(%edi),%al
 80496ed:	89 4c 24 3c          	mov    %ecx,0x3c(%esp)
 80496f1:	8b 7c 24 34          	mov    0x34(%esp),%edi
 80496f5:	89 d1                	mov    %edx,%ecx
 80496f7:	f2 ae                	repnz scas %es:(%edi),%al
 80496f9:	89 ce                	mov    %ecx,%esi
 80496fb:	f7 d6                	not    %esi
 80496fd:	8b 7c 24 38          	mov    0x38(%esp),%edi
 8049701:	89 d1                	mov    %edx,%ecx
 8049703:	f2 ae                	repnz scas %es:(%edi),%al
 8049705:	2b 74 24 3c          	sub    0x3c(%esp),%esi
 8049709:	29 ce                	sub    %ecx,%esi
 804970b:	8d 44 5b fd          	lea    -0x3(%ebx,%ebx,2),%eax
 804970f:	8d 44 06 7b          	lea    0x7b(%esi,%eax,1),%eax
 8049713:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049718:	76 7b                	jbe    8049795 <submitr+0x308>
 804971a:	8b 44 24 28          	mov    0x28(%esp),%eax
 804971e:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049724:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 804972b:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 8049732:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 8049739:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 8049740:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049747:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 804974e:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049755:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 804975c:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049763:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 804976a:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 8049771:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 8049778:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 804977f:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049783:	89 04 24             	mov    %eax,(%esp)
 8049786:	e8 75 f1 ff ff       	call   8048900 <close@plt>
 804978b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049790:	e9 b2 04 00 00       	jmp    8049c47 <submitr+0x7ba>
 8049795:	8d 94 24 54 40 00 00 	lea    0x4054(%esp),%edx
 804979c:	b9 00 08 00 00       	mov    $0x800,%ecx
 80497a1:	b8 00 00 00 00       	mov    $0x0,%eax
 80497a6:	89 d7                	mov    %edx,%edi
 80497a8:	f3 ab                	rep stos %eax,%es:(%edi)
 80497aa:	89 ef                	mov    %ebp,%edi
 80497ac:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80497b1:	f2 ae                	repnz scas %es:(%edi),%al
 80497b3:	f7 d1                	not    %ecx
 80497b5:	89 ce                	mov    %ecx,%esi
 80497b7:	83 ee 01             	sub    $0x1,%esi
 80497ba:	0f 84 99 04 00 00    	je     8049c59 <submitr+0x7cc>
 80497c0:	89 d3                	mov    %edx,%ebx
 80497c2:	0f b6 45 00          	movzbl 0x0(%ebp),%eax
 80497c6:	3c 2a                	cmp    $0x2a,%al
 80497c8:	74 24                	je     80497ee <submitr+0x361>
 80497ca:	3c 2d                	cmp    $0x2d,%al
 80497cc:	74 20                	je     80497ee <submitr+0x361>
 80497ce:	3c 2e                	cmp    $0x2e,%al
 80497d0:	74 1c                	je     80497ee <submitr+0x361>
 80497d2:	3c 5f                	cmp    $0x5f,%al
 80497d4:	74 18                	je     80497ee <submitr+0x361>
 80497d6:	8d 50 d0             	lea    -0x30(%eax),%edx
 80497d9:	80 fa 09             	cmp    $0x9,%dl
 80497dc:	76 10                	jbe    80497ee <submitr+0x361>
 80497de:	8d 50 bf             	lea    -0x41(%eax),%edx
 80497e1:	80 fa 19             	cmp    $0x19,%dl
 80497e4:	76 08                	jbe    80497ee <submitr+0x361>
 80497e6:	8d 50 9f             	lea    -0x61(%eax),%edx
 80497e9:	80 fa 19             	cmp    $0x19,%dl
 80497ec:	77 07                	ja     80497f5 <submitr+0x368>
 80497ee:	88 03                	mov    %al,(%ebx)
 80497f0:	83 c3 01             	add    $0x1,%ebx
 80497f3:	eb 69                	jmp    804985e <submitr+0x3d1>
 80497f5:	3c 20                	cmp    $0x20,%al
 80497f7:	75 08                	jne    8049801 <submitr+0x374>
 80497f9:	c6 03 2b             	movb   $0x2b,(%ebx)
 80497fc:	83 c3 01             	add    $0x1,%ebx
 80497ff:	eb 5d                	jmp    804985e <submitr+0x3d1>
 8049801:	8d 50 e0             	lea    -0x20(%eax),%edx
 8049804:	80 fa 5f             	cmp    $0x5f,%dl
 8049807:	76 04                	jbe    804980d <submitr+0x380>
 8049809:	3c 09                	cmp    $0x9,%al
 804980b:	75 62                	jne    804986f <submitr+0x3e2>
 804980d:	0f b6 c0             	movzbl %al,%eax
 8049810:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049814:	c7 44 24 0c d4 a4 04 	movl   $0x804a4d4,0xc(%esp)
 804981b:	08 
 804981c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 8049823:	00 
 8049824:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804982b:	00 
 804982c:	8d 94 24 64 a0 00 00 	lea    0xa064(%esp),%edx
 8049833:	89 14 24             	mov    %edx,(%esp)
 8049836:	e8 e5 f0 ff ff       	call   8048920 <__sprintf_chk@plt>
 804983b:	0f b6 84 24 64 a0 00 	movzbl 0xa064(%esp),%eax
 8049842:	00 
 8049843:	88 03                	mov    %al,(%ebx)
 8049845:	0f b6 84 24 65 a0 00 	movzbl 0xa065(%esp),%eax
 804984c:	00 
 804984d:	88 43 01             	mov    %al,0x1(%ebx)
 8049850:	0f b6 84 24 66 a0 00 	movzbl 0xa066(%esp),%eax
 8049857:	00 
 8049858:	88 43 02             	mov    %al,0x2(%ebx)
 804985b:	83 c3 03             	add    $0x3,%ebx
 804985e:	83 c5 01             	add    $0x1,%ebp
 8049861:	83 ee 01             	sub    $0x1,%esi
 8049864:	0f 85 58 ff ff ff    	jne    80497c2 <submitr+0x335>
 804986a:	e9 ea 03 00 00       	jmp    8049c59 <submitr+0x7cc>
 804986f:	8b 7c 24 28          	mov    0x28(%esp),%edi
 8049873:	be ec a3 04 08       	mov    $0x804a3ec,%esi
 8049878:	b8 43 00 00 00       	mov    $0x43,%eax
 804987d:	f7 c7 01 00 00 00    	test   $0x1,%edi
 8049883:	74 1a                	je     804989f <submitr+0x412>
 8049885:	0f b6 05 ec a3 04 08 	movzbl 0x804a3ec,%eax
 804988c:	88 07                	mov    %al,(%edi)
 804988e:	8b 7c 24 28          	mov    0x28(%esp),%edi
 8049892:	83 c7 01             	add    $0x1,%edi
 8049895:	be ed a3 04 08       	mov    $0x804a3ed,%esi
 804989a:	b8 42 00 00 00       	mov    $0x42,%eax
 804989f:	f7 c7 02 00 00 00    	test   $0x2,%edi
 80498a5:	74 0f                	je     80498b6 <submitr+0x429>
 80498a7:	0f b7 16             	movzwl (%esi),%edx
 80498aa:	66 89 17             	mov    %dx,(%edi)
 80498ad:	83 c7 02             	add    $0x2,%edi
 80498b0:	83 c6 02             	add    $0x2,%esi
 80498b3:	83 e8 02             	sub    $0x2,%eax
 80498b6:	89 c1                	mov    %eax,%ecx
 80498b8:	c1 e9 02             	shr    $0x2,%ecx
 80498bb:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 80498bd:	ba 00 00 00 00       	mov    $0x0,%edx
 80498c2:	a8 02                	test   $0x2,%al
 80498c4:	74 0b                	je     80498d1 <submitr+0x444>
 80498c6:	0f b7 16             	movzwl (%esi),%edx
 80498c9:	66 89 17             	mov    %dx,(%edi)
 80498cc:	ba 02 00 00 00       	mov    $0x2,%edx
 80498d1:	a8 01                	test   $0x1,%al
 80498d3:	74 07                	je     80498dc <submitr+0x44f>
 80498d5:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
 80498d9:	88 04 17             	mov    %al,(%edi,%edx,1)
 80498dc:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 80498e0:	89 04 24             	mov    %eax,(%esp)
 80498e3:	e8 18 f0 ff ff       	call   8048900 <close@plt>
 80498e8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80498ed:	e9 55 03 00 00       	jmp    8049c47 <submitr+0x7ba>
 80498f2:	89 fd                	mov    %edi,%ebp
 80498f4:	8b 7c 24 2c          	mov    0x2c(%esp),%edi
 80498f8:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 80498fc:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049900:	89 3c 24             	mov    %edi,(%esp)
 8049903:	e8 58 ef ff ff       	call   8048860 <write@plt>
 8049908:	85 c0                	test   %eax,%eax
 804990a:	7f 0f                	jg     804991b <submitr+0x48e>
 804990c:	e8 7f ef ff ff       	call   8048890 <__errno_location@plt>
 8049911:	83 38 04             	cmpl   $0x4,(%eax)
 8049914:	75 0f                	jne    8049925 <submitr+0x498>
 8049916:	b8 00 00 00 00       	mov    $0x0,%eax
 804991b:	01 c6                	add    %eax,%esi
 804991d:	29 c3                	sub    %eax,%ebx
 804991f:	75 d7                	jne    80498f8 <submitr+0x46b>
 8049921:	85 ed                	test   %ebp,%ebp
 8049923:	79 66                	jns    804998b <submitr+0x4fe>
 8049925:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049929:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 804992f:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049936:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 804993d:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049944:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 804994b:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049952:	c7 42 18 77 72 69 74 	movl   $0x74697277,0x18(%edx)
 8049959:	c7 42 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%edx)
 8049960:	c7 42 20 20 74 68 65 	movl   $0x65687420,0x20(%edx)
 8049967:	c7 42 24 20 73 65 72 	movl   $0x72657320,0x24(%edx)
 804996e:	c7 42 28 76 65 72 00 	movl   $0x726576,0x28(%edx)
 8049975:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049979:	89 04 24             	mov    %eax,(%esp)
 804997c:	e8 7f ef ff ff       	call   8048900 <close@plt>
 8049981:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049986:	e9 bc 02 00 00       	jmp    8049c47 <submitr+0x7ba>
 804998b:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804998f:	89 44 24 48          	mov    %eax,0x48(%esp)
 8049993:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%esp)
 804999a:	00 
 804999b:	8d 44 24 54          	lea    0x54(%esp),%eax
 804999f:	89 44 24 50          	mov    %eax,0x50(%esp)
 80499a3:	b9 00 20 00 00       	mov    $0x2000,%ecx
 80499a8:	8d 94 24 54 20 00 00 	lea    0x2054(%esp),%edx
 80499af:	8d 44 24 48          	lea    0x48(%esp),%eax
 80499b3:	e8 88 f9 ff ff       	call   8049340 <rio_readlineb>
 80499b8:	85 c0                	test   %eax,%eax
 80499ba:	7f 7a                	jg     8049a36 <submitr+0x5a9>
 80499bc:	8b 54 24 28          	mov    0x28(%esp),%edx
 80499c0:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 80499c6:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 80499cd:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 80499d4:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 80499db:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 80499e2:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 80499e9:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 80499f0:	c7 42 1c 20 66 69 72 	movl   $0x72696620,0x1c(%edx)
 80499f7:	c7 42 20 73 74 20 68 	movl   $0x68207473,0x20(%edx)
 80499fe:	c7 42 24 65 61 64 65 	movl   $0x65646165,0x24(%edx)
 8049a05:	c7 42 28 72 20 66 72 	movl   $0x72662072,0x28(%edx)
 8049a0c:	c7 42 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%edx)
 8049a13:	c7 42 30 65 72 76 65 	movl   $0x65767265,0x30(%edx)
 8049a1a:	66 c7 42 34 72 00    	movw   $0x72,0x34(%edx)
 8049a20:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049a24:	89 04 24             	mov    %eax,(%esp)
 8049a27:	e8 d4 ee ff ff       	call   8048900 <close@plt>
 8049a2c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a31:	e9 11 02 00 00       	jmp    8049c47 <submitr+0x7ba>
 8049a36:	8d 84 24 54 80 00 00 	lea    0x8054(%esp),%eax
 8049a3d:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049a41:	8d 44 24 44          	lea    0x44(%esp),%eax
 8049a45:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049a49:	8d 84 24 54 60 00 00 	lea    0x6054(%esp),%eax
 8049a50:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049a54:	c7 44 24 04 db a4 04 	movl   $0x804a4db,0x4(%esp)
 8049a5b:	08 
 8049a5c:	8d 84 24 54 20 00 00 	lea    0x2054(%esp),%eax
 8049a63:	89 04 24             	mov    %eax,(%esp)
 8049a66:	e8 05 ee ff ff       	call   8048870 <__isoc99_sscanf@plt>
 8049a6b:	8b 44 24 44          	mov    0x44(%esp),%eax
 8049a6f:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049a74:	0f 84 d3 00 00 00    	je     8049b4d <submitr+0x6c0>
 8049a7a:	8d 94 24 54 80 00 00 	lea    0x8054(%esp),%edx
 8049a81:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049a85:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049a89:	c7 44 24 0c 30 a4 04 	movl   $0x804a430,0xc(%esp)
 8049a90:	08 
 8049a91:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
 8049a98:	ff 
 8049a99:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049aa0:	00 
 8049aa1:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049aa5:	89 14 24             	mov    %edx,(%esp)
 8049aa8:	e8 73 ee ff ff       	call   8048920 <__sprintf_chk@plt>
 8049aad:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049ab1:	89 04 24             	mov    %eax,(%esp)
 8049ab4:	e8 47 ee ff ff       	call   8048900 <close@plt>
 8049ab9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049abe:	e9 84 01 00 00       	jmp    8049c47 <submitr+0x7ba>
 8049ac3:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049ac8:	8d 94 24 54 20 00 00 	lea    0x2054(%esp),%edx
 8049acf:	8d 44 24 48          	lea    0x48(%esp),%eax
 8049ad3:	e8 68 f8 ff ff       	call   8049340 <rio_readlineb>
 8049ad8:	85 c0                	test   %eax,%eax
 8049ada:	7f 71                	jg     8049b4d <submitr+0x6c0>
 8049adc:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049ae0:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049ae6:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049aed:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049af4:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049afb:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049b02:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049b09:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049b10:	c7 42 1c 20 68 65 61 	movl   $0x61656820,0x1c(%edx)
 8049b17:	c7 42 20 64 65 72 73 	movl   $0x73726564,0x20(%edx)
 8049b1e:	c7 42 24 20 66 72 6f 	movl   $0x6f726620,0x24(%edx)
 8049b25:	c7 42 28 6d 20 73 65 	movl   $0x6573206d,0x28(%edx)
 8049b2c:	c7 42 2c 72 76 65 72 	movl   $0x72657672,0x2c(%edx)
 8049b33:	c6 42 30 00          	movb   $0x0,0x30(%edx)
 8049b37:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049b3b:	89 04 24             	mov    %eax,(%esp)
 8049b3e:	e8 bd ed ff ff       	call   8048900 <close@plt>
 8049b43:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049b48:	e9 fa 00 00 00       	jmp    8049c47 <submitr+0x7ba>
 8049b4d:	80 bc 24 54 20 00 00 	cmpb   $0xd,0x2054(%esp)
 8049b54:	0d 
 8049b55:	0f 85 68 ff ff ff    	jne    8049ac3 <submitr+0x636>
 8049b5b:	80 bc 24 55 20 00 00 	cmpb   $0xa,0x2055(%esp)
 8049b62:	0a 
 8049b63:	0f 85 5a ff ff ff    	jne    8049ac3 <submitr+0x636>
 8049b69:	80 bc 24 56 20 00 00 	cmpb   $0x0,0x2056(%esp)
 8049b70:	00 
 8049b71:	0f 85 4c ff ff ff    	jne    8049ac3 <submitr+0x636>
 8049b77:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049b7c:	8d 94 24 54 20 00 00 	lea    0x2054(%esp),%edx
 8049b83:	8d 44 24 48          	lea    0x48(%esp),%eax
 8049b87:	e8 b4 f7 ff ff       	call   8049340 <rio_readlineb>
 8049b8c:	85 c0                	test   %eax,%eax
 8049b8e:	7f 78                	jg     8049c08 <submitr+0x77b>
 8049b90:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049b94:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049b9a:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049ba1:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049ba8:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049baf:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049bb6:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049bbd:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049bc4:	c7 42 1c 20 73 74 61 	movl   $0x61747320,0x1c(%edx)
 8049bcb:	c7 42 20 74 75 73 20 	movl   $0x20737574,0x20(%edx)
 8049bd2:	c7 42 24 6d 65 73 73 	movl   $0x7373656d,0x24(%edx)
 8049bd9:	c7 42 28 61 67 65 20 	movl   $0x20656761,0x28(%edx)
 8049be0:	c7 42 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%edx)
 8049be7:	c7 42 30 20 73 65 72 	movl   $0x72657320,0x30(%edx)
 8049bee:	c7 42 34 76 65 72 00 	movl   $0x726576,0x34(%edx)
 8049bf5:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049bf9:	89 04 24             	mov    %eax,(%esp)
 8049bfc:	e8 ff ec ff ff       	call   8048900 <close@plt>
 8049c01:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c06:	eb 3f                	jmp    8049c47 <submitr+0x7ba>
 8049c08:	8d 84 24 54 20 00 00 	lea    0x2054(%esp),%eax
 8049c0f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049c13:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049c17:	89 14 24             	mov    %edx,(%esp)
 8049c1a:	e8 c1 eb ff ff       	call   80487e0 <strcpy@plt>
 8049c1f:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049c23:	89 04 24             	mov    %eax,(%esp)
 8049c26:	e8 d5 ec ff ff       	call   8048900 <close@plt>
 8049c2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c30:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049c34:	80 3a 4f             	cmpb   $0x4f,(%edx)
 8049c37:	75 0e                	jne    8049c47 <submitr+0x7ba>
 8049c39:	80 7a 01 4b          	cmpb   $0x4b,0x1(%edx)
 8049c3d:	75 08                	jne    8049c47 <submitr+0x7ba>
 8049c3f:	80 7a 02 01          	cmpb   $0x1,0x2(%edx)
 8049c43:	19 c0                	sbb    %eax,%eax
 8049c45:	f7 d0                	not    %eax
 8049c47:	8b 8c 24 6c a0 00 00 	mov    0xa06c(%esp),%ecx
 8049c4e:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 8049c55:	74 78                	je     8049ccf <submitr+0x842>
 8049c57:	eb 71                	jmp    8049cca <submitr+0x83d>
 8049c59:	8d 84 24 54 40 00 00 	lea    0x4054(%esp),%eax
 8049c60:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049c64:	8b 44 24 38          	mov    0x38(%esp),%eax
 8049c68:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049c6c:	8b 54 24 34          	mov    0x34(%esp),%edx
 8049c70:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049c74:	8b 4c 24 30          	mov    0x30(%esp),%ecx
 8049c78:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 8049c7c:	c7 44 24 0c 60 a4 04 	movl   $0x804a460,0xc(%esp)
 8049c83:	08 
 8049c84:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049c8b:	00 
 8049c8c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049c93:	00 
 8049c94:	8d bc 24 54 20 00 00 	lea    0x2054(%esp),%edi
 8049c9b:	89 3c 24             	mov    %edi,(%esp)
 8049c9e:	e8 7d ec ff ff       	call   8048920 <__sprintf_chk@plt>
 8049ca3:	b8 00 00 00 00       	mov    $0x0,%eax
 8049ca8:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049cad:	f2 ae                	repnz scas %es:(%edi),%al
 8049caf:	f7 d1                	not    %ecx
 8049cb1:	8d 79 ff             	lea    -0x1(%ecx),%edi
 8049cb4:	89 fb                	mov    %edi,%ebx
 8049cb6:	8d b4 24 54 20 00 00 	lea    0x2054(%esp),%esi
 8049cbd:	85 ff                	test   %edi,%edi
 8049cbf:	0f 85 2d fc ff ff    	jne    80498f2 <submitr+0x465>
 8049cc5:	e9 c1 fc ff ff       	jmp    804998b <submitr+0x4fe>
 8049cca:	e8 01 eb ff ff       	call   80487d0 <__stack_chk_fail@plt>
 8049ccf:	81 c4 7c a0 00 00    	add    $0xa07c,%esp
 8049cd5:	5b                   	pop    %ebx
 8049cd6:	5e                   	pop    %esi
 8049cd7:	5f                   	pop    %edi
 8049cd8:	5d                   	pop    %ebp
 8049cd9:	c3                   	ret    

08049cda <init_timeout>:
 8049cda:	53                   	push   %ebx
 8049cdb:	83 ec 18             	sub    $0x18,%esp
 8049cde:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8049ce2:	85 db                	test   %ebx,%ebx
 8049ce4:	74 26                	je     8049d0c <init_timeout+0x32>
 8049ce6:	c7 44 24 04 59 94 04 	movl   $0x8049459,0x4(%esp)
 8049ced:	08 
 8049cee:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 8049cf5:	e8 a6 ea ff ff       	call   80487a0 <signal@plt>
 8049cfa:	85 db                	test   %ebx,%ebx
 8049cfc:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d01:	0f 48 d8             	cmovs  %eax,%ebx
 8049d04:	89 1c 24             	mov    %ebx,(%esp)
 8049d07:	e8 b4 ea ff ff       	call   80487c0 <alarm@plt>
 8049d0c:	83 c4 18             	add    $0x18,%esp
 8049d0f:	5b                   	pop    %ebx
 8049d10:	c3                   	ret    

08049d11 <init_driver>:
 8049d11:	57                   	push   %edi
 8049d12:	56                   	push   %esi
 8049d13:	53                   	push   %ebx
 8049d14:	83 ec 40             	sub    $0x40,%esp
 8049d17:	8b 74 24 50          	mov    0x50(%esp),%esi
 8049d1b:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049d21:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 8049d25:	31 c0                	xor    %eax,%eax
 8049d27:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d2e:	00 
 8049d2f:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 8049d36:	e8 65 ea ff ff       	call   80487a0 <signal@plt>
 8049d3b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d42:	00 
 8049d43:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 8049d4a:	e8 51 ea ff ff       	call   80487a0 <signal@plt>
 8049d4f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d56:	00 
 8049d57:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 8049d5e:	e8 3d ea ff ff       	call   80487a0 <signal@plt>
 8049d63:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049d6a:	00 
 8049d6b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d72:	00 
 8049d73:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049d7a:	e8 31 eb ff ff       	call   80488b0 <socket@plt>
 8049d7f:	89 c3                	mov    %eax,%ebx
 8049d81:	85 c0                	test   %eax,%eax
 8049d83:	79 4e                	jns    8049dd3 <init_driver+0xc2>
 8049d85:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049d8b:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 8049d92:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 8049d99:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 8049da0:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049da7:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049dae:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 8049db5:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 8049dbc:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 8049dc3:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 8049dc9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049dce:	e9 33 01 00 00       	jmp    8049f06 <init_driver+0x1f5>
 8049dd3:	c7 04 24 ec a4 04 08 	movl   $0x804a4ec,(%esp)
 8049dda:	e8 f1 ea ff ff       	call   80488d0 <gethostbyname@plt>
 8049ddf:	85 c0                	test   %eax,%eax
 8049de1:	75 68                	jne    8049e4b <init_driver+0x13a>
 8049de3:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049de9:	c7 46 04 72 3a 20 44 	movl   $0x44203a72,0x4(%esi)
 8049df0:	c7 46 08 4e 53 20 69 	movl   $0x6920534e,0x8(%esi)
 8049df7:	c7 46 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%esi)
 8049dfe:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049e05:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049e0c:	c7 46 18 72 65 73 6f 	movl   $0x6f736572,0x18(%esi)
 8049e13:	c7 46 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%esi)
 8049e1a:	c7 46 20 73 65 72 76 	movl   $0x76726573,0x20(%esi)
 8049e21:	c7 46 24 65 72 20 61 	movl   $0x61207265,0x24(%esi)
 8049e28:	c7 46 28 64 64 72 65 	movl   $0x65726464,0x28(%esi)
 8049e2f:	66 c7 46 2c 73 73    	movw   $0x7373,0x2c(%esi)
 8049e35:	c6 46 2e 00          	movb   $0x0,0x2e(%esi)
 8049e39:	89 1c 24             	mov    %ebx,(%esp)
 8049e3c:	e8 bf ea ff ff       	call   8048900 <close@plt>
 8049e41:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049e46:	e9 bb 00 00 00       	jmp    8049f06 <init_driver+0x1f5>
 8049e4b:	8d 7c 24 2c          	lea    0x2c(%esp),%edi
 8049e4f:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 8049e56:	00 
 8049e57:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
 8049e5e:	00 
 8049e5f:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 8049e66:	00 
 8049e67:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 8049e6e:	00 
 8049e6f:	66 c7 44 24 2c 02 00 	movw   $0x2,0x2c(%esp)
 8049e76:	c7 44 24 0c 0c 00 00 	movl   $0xc,0xc(%esp)
 8049e7d:	00 
 8049e7e:	8b 50 0c             	mov    0xc(%eax),%edx
 8049e81:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049e85:	8b 40 10             	mov    0x10(%eax),%eax
 8049e88:	8b 00                	mov    (%eax),%eax
 8049e8a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049e8e:	8d 44 24 30          	lea    0x30(%esp),%eax
 8049e92:	89 04 24             	mov    %eax,(%esp)
 8049e95:	e8 76 e9 ff ff       	call   8048810 <__memmove_chk@plt>
 8049e9a:	66 c7 44 24 2e 3b 6e 	movw   $0x6e3b,0x2e(%esp)
 8049ea1:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 8049ea8:	00 
 8049ea9:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049ead:	89 1c 24             	mov    %ebx,(%esp)
 8049eb0:	e8 3b ea ff ff       	call   80488f0 <connect@plt>
 8049eb5:	85 c0                	test   %eax,%eax
 8049eb7:	79 37                	jns    8049ef0 <init_driver+0x1df>
 8049eb9:	c7 44 24 10 ec a4 04 	movl   $0x804a4ec,0x10(%esp)
 8049ec0:	08 
 8049ec1:	c7 44 24 0c ac a4 04 	movl   $0x804a4ac,0xc(%esp)
 8049ec8:	08 
 8049ec9:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
 8049ed0:	ff 
 8049ed1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049ed8:	00 
 8049ed9:	89 34 24             	mov    %esi,(%esp)
 8049edc:	e8 3f ea ff ff       	call   8048920 <__sprintf_chk@plt>
 8049ee1:	89 1c 24             	mov    %ebx,(%esp)
 8049ee4:	e8 17 ea ff ff       	call   8048900 <close@plt>
 8049ee9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049eee:	eb 16                	jmp    8049f06 <init_driver+0x1f5>
 8049ef0:	89 1c 24             	mov    %ebx,(%esp)
 8049ef3:	e8 08 ea ff ff       	call   8048900 <close@plt>
 8049ef8:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 8049efd:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 8049f01:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f06:	8b 54 24 3c          	mov    0x3c(%esp),%edx
 8049f0a:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8049f11:	74 05                	je     8049f18 <init_driver+0x207>
 8049f13:	e8 b8 e8 ff ff       	call   80487d0 <__stack_chk_fail@plt>
 8049f18:	83 c4 40             	add    $0x40,%esp
 8049f1b:	5b                   	pop    %ebx
 8049f1c:	5e                   	pop    %esi
 8049f1d:	5f                   	pop    %edi
 8049f1e:	c3                   	ret    

08049f1f <driver_post>:
 8049f1f:	53                   	push   %ebx
 8049f20:	83 ec 28             	sub    $0x28,%esp
 8049f23:	8b 44 24 30          	mov    0x30(%esp),%eax
 8049f27:	8b 54 24 34          	mov    0x34(%esp),%edx
 8049f2b:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 8049f2f:	83 7c 24 38 00       	cmpl   $0x0,0x38(%esp)
 8049f34:	74 28                	je     8049f5e <driver_post+0x3f>
 8049f36:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049f3a:	c7 44 24 04 ff a4 04 	movl   $0x804a4ff,0x4(%esp)
 8049f41:	08 
 8049f42:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049f49:	e8 52 e9 ff ff       	call   80488a0 <__printf_chk@plt>
 8049f4e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049f53:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049f57:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f5c:	eb 49                	jmp    8049fa7 <driver_post+0x88>
 8049f5e:	85 c0                	test   %eax,%eax
 8049f60:	74 37                	je     8049f99 <driver_post+0x7a>
 8049f62:	80 38 00             	cmpb   $0x0,(%eax)
 8049f65:	74 32                	je     8049f99 <driver_post+0x7a>
 8049f67:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 8049f6b:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049f6f:	c7 44 24 10 16 a5 04 	movl   $0x804a516,0x10(%esp)
 8049f76:	08 
 8049f77:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049f7b:	c7 44 24 08 1a a5 04 	movl   $0x804a51a,0x8(%esp)
 8049f82:	08 
 8049f83:	c7 44 24 04 6e 3b 00 	movl   $0x3b6e,0x4(%esp)
 8049f8a:	00 
 8049f8b:	c7 04 24 ec a4 04 08 	movl   $0x804a4ec,(%esp)
 8049f92:	e8 f6 f4 ff ff       	call   804948d <submitr>
 8049f97:	eb 0e                	jmp    8049fa7 <driver_post+0x88>
 8049f99:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049f9e:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049fa2:	b8 00 00 00 00       	mov    $0x0,%eax
 8049fa7:	83 c4 28             	add    $0x28,%esp
 8049faa:	5b                   	pop    %ebx
 8049fab:	c3                   	ret    
 8049fac:	90                   	nop
 8049fad:	90                   	nop
 8049fae:	90                   	nop
 8049faf:	90                   	nop

08049fb0 <__libc_csu_init>:
 8049fb0:	55                   	push   %ebp
 8049fb1:	57                   	push   %edi
 8049fb2:	56                   	push   %esi
 8049fb3:	53                   	push   %ebx
 8049fb4:	e8 69 00 00 00       	call   804a022 <__i686.get_pc_thunk.bx>
 8049fb9:	81 c3 3b 20 00 00    	add    $0x203b,%ebx
 8049fbf:	83 ec 1c             	sub    $0x1c,%esp
 8049fc2:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8049fc6:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 8049fcc:	e8 53 e7 ff ff       	call   8048724 <_init>
 8049fd1:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 8049fd7:	29 c7                	sub    %eax,%edi
 8049fd9:	c1 ff 02             	sar    $0x2,%edi
 8049fdc:	85 ff                	test   %edi,%edi
 8049fde:	74 29                	je     804a009 <__libc_csu_init+0x59>
 8049fe0:	31 f6                	xor    %esi,%esi
 8049fe2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049fe8:	8b 44 24 38          	mov    0x38(%esp),%eax
 8049fec:	89 2c 24             	mov    %ebp,(%esp)
 8049fef:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049ff3:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049ff7:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049ffb:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 804a002:	83 c6 01             	add    $0x1,%esi
 804a005:	39 fe                	cmp    %edi,%esi
 804a007:	75 df                	jne    8049fe8 <__libc_csu_init+0x38>
 804a009:	83 c4 1c             	add    $0x1c,%esp
 804a00c:	5b                   	pop    %ebx
 804a00d:	5e                   	pop    %esi
 804a00e:	5f                   	pop    %edi
 804a00f:	5d                   	pop    %ebp
 804a010:	c3                   	ret    
 804a011:	eb 0d                	jmp    804a020 <__libc_csu_fini>
 804a013:	90                   	nop
 804a014:	90                   	nop
 804a015:	90                   	nop
 804a016:	90                   	nop
 804a017:	90                   	nop
 804a018:	90                   	nop
 804a019:	90                   	nop
 804a01a:	90                   	nop
 804a01b:	90                   	nop
 804a01c:	90                   	nop
 804a01d:	90                   	nop
 804a01e:	90                   	nop
 804a01f:	90                   	nop

0804a020 <__libc_csu_fini>:
 804a020:	f3 c3                	repz ret 

0804a022 <__i686.get_pc_thunk.bx>:
 804a022:	8b 1c 24             	mov    (%esp),%ebx
 804a025:	c3                   	ret    
 804a026:	90                   	nop
 804a027:	90                   	nop
 804a028:	90                   	nop
 804a029:	90                   	nop
 804a02a:	90                   	nop
 804a02b:	90                   	nop
 804a02c:	90                   	nop
 804a02d:	90                   	nop
 804a02e:	90                   	nop
 804a02f:	90                   	nop

0804a030 <__do_global_ctors_aux>:
 804a030:	55                   	push   %ebp
 804a031:	89 e5                	mov    %esp,%ebp
 804a033:	53                   	push   %ebx
 804a034:	83 ec 04             	sub    $0x4,%esp
 804a037:	a1 14 bf 04 08       	mov    0x804bf14,%eax
 804a03c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a03f:	74 13                	je     804a054 <__do_global_ctors_aux+0x24>
 804a041:	bb 14 bf 04 08       	mov    $0x804bf14,%ebx
 804a046:	66 90                	xchg   %ax,%ax
 804a048:	83 eb 04             	sub    $0x4,%ebx
 804a04b:	ff d0                	call   *%eax
 804a04d:	8b 03                	mov    (%ebx),%eax
 804a04f:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a052:	75 f4                	jne    804a048 <__do_global_ctors_aux+0x18>
 804a054:	83 c4 04             	add    $0x4,%esp
 804a057:	5b                   	pop    %ebx
 804a058:	5d                   	pop    %ebp
 804a059:	c3                   	ret    
 804a05a:	90                   	nop
 804a05b:	90                   	nop

Disassembly of section .fini:

0804a05c <_fini>:
 804a05c:	53                   	push   %ebx
 804a05d:	83 ec 08             	sub    $0x8,%esp
 804a060:	e8 00 00 00 00       	call   804a065 <_fini+0x9>
 804a065:	5b                   	pop    %ebx
 804a066:	81 c3 8f 1f 00 00    	add    $0x1f8f,%ebx
 804a06c:	e8 ef e8 ff ff       	call   8048960 <__do_global_dtors_aux>
 804a071:	83 c4 08             	add    $0x8,%esp
 804a074:	5b                   	pop    %ebx
 804a075:	c3                   	ret    
