
main.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <work>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	89 7d ec             	mov    %edi,-0x14(%rbp)
   b:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  12:	c7 45 f8 02 00 00 00 	movl   $0x2,-0x8(%rbp)
  19:	eb 0e                	jmp    29 <work+0x29>
  1b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  1e:	0f af 45 f8          	imul   -0x8(%rbp),%eax
  22:	89 45 fc             	mov    %eax,-0x4(%rbp)
  25:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  29:	8b 45 f8             	mov    -0x8(%rbp),%eax
  2c:	3b 45 ec             	cmp    -0x14(%rbp),%eax
  2f:	7e ea                	jle    1b <work+0x1b>
  31:	8b 45 fc             	mov    -0x4(%rbp),%eax
  34:	5d                   	pop    %rbp
  35:	c3                   	retq   

0000000000000036 <main>:
  36:	f3 0f 1e fa          	endbr64 
  3a:	55                   	push   %rbp
  3b:	48 89 e5             	mov    %rsp,%rbp
  3e:	48 83 ec 10          	sub    $0x10,%rsp
  42:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  49:	00 00 
  4b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4f:	31 c0                	xor    %eax,%eax
  51:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
  55:	48 89 c6             	mov    %rax,%rsi
  58:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 5f <main+0x29>
  5f:	b8 00 00 00 00       	mov    $0x0,%eax
  64:	e8 00 00 00 00       	callq  69 <main+0x33>
  69:	8b 45 f4             	mov    -0xc(%rbp),%eax
  6c:	89 c7                	mov    %eax,%edi
  6e:	e8 00 00 00 00       	callq  73 <main+0x3d>
  73:	89 05 00 00 00 00    	mov    %eax,0x0(%rip)        # 79 <main+0x43>
  79:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 7f <main+0x49>
  7f:	89 c6                	mov    %eax,%esi
  81:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 88 <main+0x52>
  88:	b8 00 00 00 00       	mov    $0x0,%eax
  8d:	e8 00 00 00 00       	callq  92 <main+0x5c>
  92:	b8 00 00 00 00       	mov    $0x0,%eax
  97:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  9b:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  a2:	00 00 
  a4:	74 05                	je     ab <main+0x75>
  a6:	e8 00 00 00 00       	callq  ab <main+0x75>
  ab:	c9                   	leaveq 
  ac:	c3                   	retq   
