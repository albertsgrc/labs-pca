
matriu4x4-opt-unrol-i.g2:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	48 8b 05 3d 1b 20 00 	mov    0x201b3d(%rip),%rax        # 601ff8 <_DYNAMIC+0x1d0>
  4004bb:	48 85 c0             	test   %rax,%rax
  4004be:	74 05                	je     4004c5 <_init+0x15>
  4004c0:	e8 3b 00 00 00       	callq  400500 <__gmon_start__@plt>
  4004c5:	48 83 c4 08          	add    $0x8,%rsp
  4004c9:	c3                   	retq   

Disassembly of section .plt:

00000000004004d0 <putchar@plt-0x10>:
  4004d0:	ff 35 32 1b 20 00    	pushq  0x201b32(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004d6:	ff 25 34 1b 20 00    	jmpq   *0x201b34(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004e0 <putchar@plt>:
  4004e0:	ff 25 32 1b 20 00    	jmpq   *0x201b32(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004e6:	68 00 00 00 00       	pushq  $0x0
  4004eb:	e9 e0 ff ff ff       	jmpq   4004d0 <_init+0x20>

00000000004004f0 <__libc_start_main@plt>:
  4004f0:	ff 25 2a 1b 20 00    	jmpq   *0x201b2a(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004f6:	68 01 00 00 00       	pushq  $0x1
  4004fb:	e9 d0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400500 <__gmon_start__@plt>:
  400500:	ff 25 22 1b 20 00    	jmpq   *0x201b22(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400506:	68 02 00 00 00       	pushq  $0x2
  40050b:	e9 c0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400510 <strtol@plt>:
  400510:	ff 25 1a 1b 20 00    	jmpq   *0x201b1a(%rip)        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400516:	68 03 00 00 00       	pushq  $0x3
  40051b:	e9 b0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400520 <__printf_chk@plt>:
  400520:	ff 25 12 1b 20 00    	jmpq   *0x201b12(%rip)        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400526:	68 04 00 00 00       	pushq  $0x4
  40052b:	e9 a0 ff ff ff       	jmpq   4004d0 <_init+0x20>

0000000000400530 <rand@plt>:
  400530:	ff 25 0a 1b 20 00    	jmpq   *0x201b0a(%rip)        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400536:	68 05 00 00 00       	pushq  $0x5
  40053b:	e9 90 ff ff ff       	jmpq   4004d0 <_init+0x20>

Disassembly of section .text:

0000000000400540 <main>:
  400540:	41 57                	push   %r15
  400542:	b9 08 00 00 00       	mov    $0x8,%ecx
  400547:	31 c0                	xor    %eax,%eax
  400549:	41 56                	push   %r14
  40054b:	49 89 f6             	mov    %rsi,%r14
  40054e:	41 55                	push   %r13
  400550:	41 89 fd             	mov    %edi,%r13d
  400553:	41 54                	push   %r12
  400555:	55                   	push   %rbp
  400556:	53                   	push   %rbx
  400557:	48 81 ec e8 01 00 00 	sub    $0x1e8,%rsp
  40055e:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  400565:	00 
  400566:	48 8d 9c 24 20 01 00 	lea    0x120(%rsp),%rbx
  40056d:	00 
  40056e:	48 8d ac 24 60 01 00 	lea    0x160(%rsp),%rbp
  400575:	00 
  400576:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  400579:	4c 8d 63 40          	lea    0x40(%rbx),%r12
  40057d:	45 31 ff             	xor    %r15d,%r15d
  400580:	e8 ab ff ff ff       	callq  400530 <rand@plt>
  400585:	42 89 04 3b          	mov    %eax,(%rbx,%r15,1)
  400589:	e8 a2 ff ff ff       	callq  400530 <rand@plt>
  40058e:	42 89 44 3d 00       	mov    %eax,0x0(%rbp,%r15,1)
  400593:	49 83 c7 04          	add    $0x4,%r15
  400597:	49 83 ff 10          	cmp    $0x10,%r15
  40059b:	75 e3                	jne    400580 <main+0x40>
  40059d:	48 83 c3 10          	add    $0x10,%rbx
  4005a1:	48 83 c5 10          	add    $0x10,%rbp
  4005a5:	4c 39 e3             	cmp    %r12,%rbx
  4005a8:	75 d3                	jne    40057d <main+0x3d>
  4005aa:	41 83 fd 01          	cmp    $0x1,%r13d
  4005ae:	0f 8e a4 08 00 00    	jle    400e58 <main+0x918>
  4005b4:	49 8b 7e 08          	mov    0x8(%r14),%rdi
  4005b8:	31 f6                	xor    %esi,%esi
  4005ba:	ba 0a 00 00 00       	mov    $0xa,%edx
  4005bf:	e8 4c ff ff ff       	callq  400510 <strtol@plt>
  4005c4:	85 c0                	test   %eax,%eax
  4005c6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4005ca:	0f 84 67 08 00 00    	je     400e37 <main+0x8f7>
  4005d0:	8b b4 24 20 01 00 00 	mov    0x120(%rsp),%esi
  4005d7:	8b 84 24 a0 01 00 00 	mov    0x1a0(%rsp),%eax
  4005de:	8b 9c 24 60 01 00 00 	mov    0x160(%rsp),%ebx
  4005e5:	8b 8c 24 24 01 00 00 	mov    0x124(%rsp),%ecx
  4005ec:	44 8b 94 24 74 01 00 	mov    0x174(%rsp),%r10d
  4005f3:	00 
  4005f4:	44 8b 84 24 90 01 00 	mov    0x190(%rsp),%r8d
  4005fb:	00 
  4005fc:	89 44 24 04          	mov    %eax,0x4(%rsp)
  400600:	89 f0                	mov    %esi,%eax
  400602:	44 8b 8c 24 64 01 00 	mov    0x164(%rsp),%r9d
  400609:	00 
  40060a:	0f af c3             	imul   %ebx,%eax
  40060d:	44 8b 9c 24 a4 01 00 	mov    0x1a4(%rsp),%r11d
  400614:	00 
  400615:	44 8b b4 24 a8 01 00 	mov    0x1a8(%rsp),%r14d
  40061c:	00 
  40061d:	44 0f af d1          	imul   %ecx,%r10d
  400621:	8b 94 24 28 01 00 00 	mov    0x128(%rsp),%edx
  400628:	8b bc 24 80 01 00 00 	mov    0x180(%rsp),%edi
  40062f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  400633:	8b 84 24 70 01 00 00 	mov    0x170(%rsp),%eax
  40063a:	44 89 54 24 1c       	mov    %r10d,0x1c(%rsp)
  40063f:	44 8b 94 24 78 01 00 	mov    0x178(%rsp),%r10d
  400646:	00 
  400647:	44 0f af ce          	imul   %esi,%r9d
  40064b:	44 89 5c 24 08       	mov    %r11d,0x8(%rsp)
  400650:	44 89 34 24          	mov    %r14d,(%rsp)
  400654:	0f af c1             	imul   %ecx,%eax
  400657:	44 8b 9c 24 84 01 00 	mov    0x184(%rsp),%r11d
  40065e:	00 
  40065f:	44 8b b4 24 98 01 00 	mov    0x198(%rsp),%r14d
  400666:	00 
  400667:	44 89 4c 24 18       	mov    %r9d,0x18(%rsp)
  40066c:	44 8b 8c 24 68 01 00 	mov    0x168(%rsp),%r9d
  400673:	00 
  400674:	89 84 24 90 00 00 00 	mov    %eax,0x90(%rsp)
  40067b:	8b 84 24 2c 01 00 00 	mov    0x12c(%rsp),%eax
  400682:	44 0f af d1          	imul   %ecx,%r10d
  400686:	0f af fa             	imul   %edx,%edi
  400689:	44 89 54 24 20       	mov    %r10d,0x20(%rsp)
  40068e:	44 8b 94 24 88 01 00 	mov    0x188(%rsp),%r10d
  400695:	00 
  400696:	44 0f af c0          	imul   %eax,%r8d
  40069a:	89 bc 24 94 00 00 00 	mov    %edi,0x94(%rsp)
  4006a1:	44 0f af da          	imul   %edx,%r11d
  4006a5:	44 89 44 24 14       	mov    %r8d,0x14(%rsp)
  4006aa:	44 8b 84 24 94 01 00 	mov    0x194(%rsp),%r8d
  4006b1:	00 
  4006b2:	44 0f af ce          	imul   %esi,%r9d
  4006b6:	44 89 9c 24 98 00 00 	mov    %r11d,0x98(%rsp)
  4006bd:	00 
  4006be:	44 0f af d2          	imul   %edx,%r10d
  4006c2:	44 89 8c 24 a0 00 00 	mov    %r9d,0xa0(%rsp)
  4006c9:	00 
  4006ca:	44 0f af c0          	imul   %eax,%r8d
  4006ce:	44 89 54 24 24       	mov    %r10d,0x24(%rsp)
  4006d3:	44 0f af f0          	imul   %eax,%r14d
  4006d7:	44 89 84 24 9c 00 00 	mov    %r8d,0x9c(%rsp)
  4006de:	00 
  4006df:	44 89 b4 24 a4 00 00 	mov    %r14d,0xa4(%rsp)
  4006e6:	00 
  4006e7:	44 8b 94 24 70 01 00 	mov    0x170(%rsp),%r10d
  4006ee:	00 
  4006ef:	0f af 8c 24 7c 01 00 	imul   0x17c(%rsp),%ecx
  4006f6:	00 
  4006f7:	0f af b4 24 6c 01 00 	imul   0x16c(%rsp),%esi
  4006fe:	00 
  4006ff:	0f af 84 24 9c 01 00 	imul   0x19c(%rsp),%eax
  400706:	00 
  400707:	44 8b bc 24 64 01 00 	mov    0x164(%rsp),%r15d
  40070e:	00 
  40070f:	44 8b a4 24 84 01 00 	mov    0x184(%rsp),%r12d
  400716:	00 
  400717:	8b bc 24 68 01 00 00 	mov    0x168(%rsp),%edi
  40071e:	44 8b 9c 24 78 01 00 	mov    0x178(%rsp),%r11d
  400725:	00 
  400726:	44 8b b4 24 ac 01 00 	mov    0x1ac(%rsp),%r14d
  40072d:	00 
  40072e:	44 8b ac 24 b0 01 00 	mov    0x1b0(%rsp),%r13d
  400735:	00 
  400736:	89 4c 24 28          	mov    %ecx,0x28(%rsp)
  40073a:	8b 8c 24 8c 01 00 00 	mov    0x18c(%rsp),%ecx
  400741:	89 b4 24 ac 00 00 00 	mov    %esi,0xac(%rsp)
  400748:	8b b4 24 30 01 00 00 	mov    0x130(%rsp),%esi
  40074f:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%rsp)
  400756:	8b 84 24 3c 01 00 00 	mov    0x13c(%rsp),%eax
  40075d:	0f af ca             	imul   %edx,%ecx
  400760:	8b 94 24 38 01 00 00 	mov    0x138(%rsp),%edx
  400767:	8b ac 24 b4 01 00 00 	mov    0x1b4(%rsp),%ebp
  40076e:	44 0f af fe          	imul   %esi,%r15d
  400772:	89 4c 24 2c          	mov    %ecx,0x2c(%rsp)
  400776:	89 d9                	mov    %ebx,%ecx
  400778:	0f af ce             	imul   %esi,%ecx
  40077b:	44 89 7c 24 38       	mov    %r15d,0x38(%rsp)
  400780:	44 8b bc 24 74 01 00 	mov    0x174(%rsp),%r15d
  400787:	00 
  400788:	44 0f af e2          	imul   %edx,%r12d
  40078c:	89 8c 24 b4 00 00 00 	mov    %ecx,0xb4(%rsp)
  400793:	8b 8c 24 34 01 00 00 	mov    0x134(%rsp),%ecx
  40079a:	44 89 64 24 3c       	mov    %r12d,0x3c(%rsp)
  40079f:	44 8b a4 24 94 01 00 	mov    0x194(%rsp),%r12d
  4007a6:	00 
  4007a7:	0f af fe             	imul   %esi,%edi
  4007aa:	44 0f af d1          	imul   %ecx,%r10d
  4007ae:	89 bc 24 c8 00 00 00 	mov    %edi,0xc8(%rsp)
  4007b5:	44 89 54 24 30       	mov    %r10d,0x30(%rsp)
  4007ba:	44 8b 94 24 80 01 00 	mov    0x180(%rsp),%r10d
  4007c1:	00 
  4007c2:	44 0f af f9          	imul   %ecx,%r15d
  4007c6:	44 0f af e0          	imul   %eax,%r12d
  4007ca:	44 89 bc 24 bc 00 00 	mov    %r15d,0xbc(%rsp)
  4007d1:	00 
  4007d2:	44 8b bc 24 b8 01 00 	mov    0x1b8(%rsp),%r15d
  4007d9:	00 
  4007da:	44 0f af d2          	imul   %edx,%r10d
  4007de:	44 89 a4 24 c4 00 00 	mov    %r12d,0xc4(%rsp)
  4007e5:	00 
  4007e6:	44 0f af d9          	imul   %ecx,%r11d
  4007ea:	44 89 54 24 34       	mov    %r10d,0x34(%rsp)
  4007ef:	44 8b 94 24 90 01 00 	mov    0x190(%rsp),%r10d
  4007f6:	00 
  4007f7:	44 0f af d0          	imul   %eax,%r10d
  4007fb:	44 89 94 24 b8 00 00 	mov    %r10d,0xb8(%rsp)
  400802:	00 
  400803:	44 89 5c 24 40       	mov    %r11d,0x40(%rsp)
  400808:	0f af 8c 24 7c 01 00 	imul   0x17c(%rsp),%ecx
  40080f:	00 
  400810:	0f af b4 24 6c 01 00 	imul   0x16c(%rsp),%esi
  400817:	00 
  400818:	44 8b 84 24 88 01 00 	mov    0x188(%rsp),%r8d
  40081f:	00 
  400820:	44 8b 8c 24 98 01 00 	mov    0x198(%rsp),%r9d
  400827:	00 
  400828:	44 8b 94 24 70 01 00 	mov    0x170(%rsp),%r10d
  40082f:	00 
  400830:	8b bc 24 64 01 00 00 	mov    0x164(%rsp),%edi
  400837:	44 8b a4 24 bc 01 00 	mov    0x1bc(%rsp),%r12d
  40083e:	00 
  40083f:	44 8b 9c 24 c0 01 00 	mov    0x1c0(%rsp),%r11d
  400846:	00 
  400847:	44 0f af c2          	imul   %edx,%r8d
  40084b:	89 4c 24 48          	mov    %ecx,0x48(%rsp)
  40084f:	8b 8c 24 8c 01 00 00 	mov    0x18c(%rsp),%ecx
  400856:	89 b4 24 d8 00 00 00 	mov    %esi,0xd8(%rsp)
  40085d:	8b b4 24 44 01 00 00 	mov    0x144(%rsp),%esi
  400864:	44 89 44 24 44       	mov    %r8d,0x44(%rsp)
  400869:	41 89 d8             	mov    %ebx,%r8d
  40086c:	0f af ca             	imul   %edx,%ecx
  40086f:	8b 94 24 48 01 00 00 	mov    0x148(%rsp),%edx
  400876:	44 0f af c8          	imul   %eax,%r9d
  40087a:	0f af 84 24 9c 01 00 	imul   0x19c(%rsp),%eax
  400881:	00 
  400882:	89 4c 24 4c          	mov    %ecx,0x4c(%rsp)
  400886:	8b 8c 24 40 01 00 00 	mov    0x140(%rsp),%ecx
  40088d:	44 89 8c 24 d4 00 00 	mov    %r9d,0xd4(%rsp)
  400894:	00 
  400895:	44 8b 8c 24 74 01 00 	mov    0x174(%rsp),%r9d
  40089c:	00 
  40089d:	44 0f af c1          	imul   %ecx,%r8d
  4008a1:	44 0f af d6          	imul   %esi,%r10d
  4008a5:	89 84 24 dc 00 00 00 	mov    %eax,0xdc(%rsp)
  4008ac:	8b 84 24 4c 01 00 00 	mov    0x14c(%rsp),%eax
  4008b3:	44 89 84 24 e0 00 00 	mov    %r8d,0xe0(%rsp)
  4008ba:	00 
  4008bb:	44 8b 84 24 84 01 00 	mov    0x184(%rsp),%r8d
  4008c2:	00 
  4008c3:	44 89 54 24 50       	mov    %r10d,0x50(%rsp)
  4008c8:	44 8b 94 24 80 01 00 	mov    0x180(%rsp),%r10d
  4008cf:	00 
  4008d0:	44 0f af ce          	imul   %esi,%r9d
  4008d4:	0f af f9             	imul   %ecx,%edi
  4008d7:	44 89 4c 24 58       	mov    %r9d,0x58(%rsp)
  4008dc:	44 8b 8c 24 94 01 00 	mov    0x194(%rsp),%r9d
  4008e3:	00 
  4008e4:	44 0f af d2          	imul   %edx,%r10d
  4008e8:	89 bc 24 e8 00 00 00 	mov    %edi,0xe8(%rsp)
  4008ef:	44 0f af c2          	imul   %edx,%r8d
  4008f3:	44 89 54 24 54       	mov    %r10d,0x54(%rsp)
  4008f8:	44 8b 94 24 90 01 00 	mov    0x190(%rsp),%r10d
  4008ff:	00 
  400900:	44 0f af c8          	imul   %eax,%r9d
  400904:	44 89 44 24 5c       	mov    %r8d,0x5c(%rsp)
  400909:	44 0f af d0          	imul   %eax,%r10d
  40090d:	44 89 94 24 e4 00 00 	mov    %r10d,0xe4(%rsp)
  400914:	00 
  400915:	44 8b 94 24 c4 01 00 	mov    0x1c4(%rsp),%r10d
  40091c:	00 
  40091d:	44 89 8c 24 ec 00 00 	mov    %r9d,0xec(%rsp)
  400924:	00 
  400925:	8b bc 24 78 01 00 00 	mov    0x178(%rsp),%edi
  40092c:	44 8b 84 24 68 01 00 	mov    0x168(%rsp),%r8d
  400933:	00 
  400934:	44 8b 8c 24 c8 01 00 	mov    0x1c8(%rsp),%r9d
  40093b:	00 
  40093c:	0f af fe             	imul   %esi,%edi
  40093f:	44 0f af c1          	imul   %ecx,%r8d
  400943:	0f af 8c 24 6c 01 00 	imul   0x16c(%rsp),%ecx
  40094a:	00 
  40094b:	89 7c 24 60          	mov    %edi,0x60(%rsp)
  40094f:	8b bc 24 88 01 00 00 	mov    0x188(%rsp),%edi
  400956:	0f af b4 24 7c 01 00 	imul   0x17c(%rsp),%esi
  40095d:	00 
  40095e:	44 89 84 24 f0 00 00 	mov    %r8d,0xf0(%rsp)
  400965:	00 
  400966:	44 8b 84 24 cc 01 00 	mov    0x1cc(%rsp),%r8d
  40096d:	00 
  40096e:	0f af fa             	imul   %edx,%edi
  400971:	89 8c 24 f8 00 00 00 	mov    %ecx,0xf8(%rsp)
  400978:	8b 8c 24 70 01 00 00 	mov    0x170(%rsp),%ecx
  40097f:	89 7c 24 64          	mov    %edi,0x64(%rsp)
  400983:	8b bc 24 98 01 00 00 	mov    0x198(%rsp),%edi
  40098a:	0f af 8c 24 54 01 00 	imul   0x154(%rsp),%ecx
  400991:	00 
  400992:	89 74 24 68          	mov    %esi,0x68(%rsp)
  400996:	8b b4 24 8c 01 00 00 	mov    0x18c(%rsp),%esi
  40099d:	0f af f8             	imul   %eax,%edi
  4009a0:	0f af 84 24 9c 01 00 	imul   0x19c(%rsp),%eax
  4009a7:	00 
  4009a8:	0f af f2             	imul   %edx,%esi
  4009ab:	89 bc 24 f4 00 00 00 	mov    %edi,0xf4(%rsp)
  4009b2:	8b bc 24 d0 01 00 00 	mov    0x1d0(%rsp),%edi
  4009b9:	89 4c 24 70          	mov    %ecx,0x70(%rsp)
  4009bd:	8b 8c 24 80 01 00 00 	mov    0x180(%rsp),%ecx
  4009c4:	89 74 24 6c          	mov    %esi,0x6c(%rsp)
  4009c8:	8b b4 24 50 01 00 00 	mov    0x150(%rsp),%esi
  4009cf:	89 84 24 fc 00 00 00 	mov    %eax,0xfc(%rsp)
  4009d6:	8b 84 24 58 01 00 00 	mov    0x158(%rsp),%eax
  4009dd:	0f af f3             	imul   %ebx,%esi
  4009e0:	8b 9c 24 5c 01 00 00 	mov    0x15c(%rsp),%ebx
  4009e7:	0f af c8             	imul   %eax,%ecx
  4009ea:	89 b4 24 00 01 00 00 	mov    %esi,0x100(%rsp)
  4009f1:	8b b4 24 d4 01 00 00 	mov    0x1d4(%rsp),%esi
  4009f8:	89 4c 24 74          	mov    %ecx,0x74(%rsp)
  4009fc:	8b 8c 24 90 01 00 00 	mov    0x190(%rsp),%ecx
  400a03:	0f af cb             	imul   %ebx,%ecx
  400a06:	89 8c 24 04 01 00 00 	mov    %ecx,0x104(%rsp)
  400a0d:	8b 8c 24 64 01 00 00 	mov    0x164(%rsp),%ecx
  400a14:	0f af 8c 24 50 01 00 	imul   0x150(%rsp),%ecx
  400a1b:	00 
  400a1c:	89 8c 24 08 01 00 00 	mov    %ecx,0x108(%rsp)
  400a23:	8b 94 24 68 01 00 00 	mov    0x168(%rsp),%edx
  400a2a:	0f af 94 24 50 01 00 	imul   0x150(%rsp),%edx
  400a31:	00 
  400a32:	8b 8c 24 74 01 00 00 	mov    0x174(%rsp),%ecx
  400a39:	0f af 8c 24 54 01 00 	imul   0x154(%rsp),%ecx
  400a40:	00 
  400a41:	89 94 24 80 00 00 00 	mov    %edx,0x80(%rsp)
  400a48:	8b 94 24 78 01 00 00 	mov    0x178(%rsp),%edx
  400a4f:	0f af 94 24 54 01 00 	imul   0x154(%rsp),%edx
  400a56:	00 
  400a57:	89 4c 24 78          	mov    %ecx,0x78(%rsp)
  400a5b:	8b 8c 24 84 01 00 00 	mov    0x184(%rsp),%ecx
  400a62:	0f af c8             	imul   %eax,%ecx
  400a65:	89 94 24 10 01 00 00 	mov    %edx,0x110(%rsp)
  400a6c:	8b 94 24 88 01 00 00 	mov    0x188(%rsp),%edx
  400a73:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
  400a77:	8b 8c 24 94 01 00 00 	mov    0x194(%rsp),%ecx
  400a7e:	0f af d0             	imul   %eax,%edx
  400a81:	0f af 84 24 8c 01 00 	imul   0x18c(%rsp),%eax
  400a88:	00 
  400a89:	89 94 24 14 01 00 00 	mov    %edx,0x114(%rsp)
  400a90:	8b 94 24 98 01 00 00 	mov    0x198(%rsp),%edx
  400a97:	0f af cb             	imul   %ebx,%ecx
  400a9a:	0f af d3             	imul   %ebx,%edx
  400a9d:	89 84 24 1c 01 00 00 	mov    %eax,0x11c(%rsp)
  400aa4:	8b 84 24 9c 01 00 00 	mov    0x19c(%rsp),%eax
  400aab:	89 8c 24 0c 01 00 00 	mov    %ecx,0x10c(%rsp)
  400ab2:	8b 8c 24 d8 01 00 00 	mov    0x1d8(%rsp),%ecx
  400ab9:	89 94 24 84 00 00 00 	mov    %edx,0x84(%rsp)
  400ac0:	8b 94 24 dc 01 00 00 	mov    0x1dc(%rsp),%edx
  400ac7:	0f af c3             	imul   %ebx,%eax
  400aca:	8b 9c 24 90 00 00 00 	mov    0x90(%rsp),%ebx
  400ad1:	89 94 24 d0 00 00 00 	mov    %edx,0xd0(%rsp)
  400ad8:	8b 94 24 6c 01 00 00 	mov    0x16c(%rsp),%edx
  400adf:	0f af 94 24 50 01 00 	imul   0x150(%rsp),%edx
  400ae6:	00 
  400ae7:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  400aee:	31 c0                	xor    %eax,%eax
  400af0:	89 94 24 88 00 00 00 	mov    %edx,0x88(%rsp)
  400af7:	8b 94 24 7c 01 00 00 	mov    0x17c(%rsp),%edx
  400afe:	0f af 94 24 54 01 00 	imul   0x154(%rsp),%edx
  400b05:	00 
  400b06:	89 94 24 18 01 00 00 	mov    %edx,0x118(%rsp)
  400b0d:	8b 94 24 94 00 00 00 	mov    0x94(%rsp),%edx
  400b14:	01 d3                	add    %edx,%ebx
  400b16:	8b 94 24 98 00 00 00 	mov    0x98(%rsp),%edx
  400b1d:	89 9c 24 a8 00 00 00 	mov    %ebx,0xa8(%rsp)
  400b24:	8b 9c 24 9c 00 00 00 	mov    0x9c(%rsp),%ebx
  400b2b:	01 d3                	add    %edx,%ebx
  400b2d:	89 9c 24 c0 00 00 00 	mov    %ebx,0xc0(%rsp)
  400b34:	8b 94 24 a0 00 00 00 	mov    0xa0(%rsp),%edx
  400b3b:	8b 9c 24 a4 00 00 00 	mov    0xa4(%rsp),%ebx
  400b42:	01 d3                	add    %edx,%ebx
  400b44:	8b 94 24 ac 00 00 00 	mov    0xac(%rsp),%edx
  400b4b:	89 9c 24 cc 00 00 00 	mov    %ebx,0xcc(%rsp)
  400b52:	8b 9c 24 b0 00 00 00 	mov    0xb0(%rsp),%ebx
  400b59:	01 d3                	add    %edx,%ebx
  400b5b:	8b 94 24 b4 00 00 00 	mov    0xb4(%rsp),%edx
  400b62:	89 9c 24 94 00 00 00 	mov    %ebx,0x94(%rsp)
  400b69:	8b 9c 24 b8 00 00 00 	mov    0xb8(%rsp),%ebx
  400b70:	01 d3                	add    %edx,%ebx
  400b72:	8b 94 24 bc 00 00 00 	mov    0xbc(%rsp),%edx
  400b79:	89 9c 24 a0 00 00 00 	mov    %ebx,0xa0(%rsp)
  400b80:	8b 9c 24 c4 00 00 00 	mov    0xc4(%rsp),%ebx
  400b87:	01 d3                	add    %edx,%ebx
  400b89:	8b 94 24 c8 00 00 00 	mov    0xc8(%rsp),%edx
  400b90:	89 9c 24 ac 00 00 00 	mov    %ebx,0xac(%rsp)
  400b97:	8b 9c 24 d4 00 00 00 	mov    0xd4(%rsp),%ebx
  400b9e:	01 d3                	add    %edx,%ebx
  400ba0:	8b 94 24 d8 00 00 00 	mov    0xd8(%rsp),%edx
  400ba7:	89 9c 24 b4 00 00 00 	mov    %ebx,0xb4(%rsp)
  400bae:	8b 9c 24 dc 00 00 00 	mov    0xdc(%rsp),%ebx
  400bb5:	01 d3                	add    %edx,%ebx
  400bb7:	8b 94 24 e0 00 00 00 	mov    0xe0(%rsp),%edx
  400bbe:	89 9c 24 bc 00 00 00 	mov    %ebx,0xbc(%rsp)
  400bc5:	8b 9c 24 e4 00 00 00 	mov    0xe4(%rsp),%ebx
  400bcc:	01 d3                	add    %edx,%ebx
  400bce:	8b 94 24 e8 00 00 00 	mov    0xe8(%rsp),%edx
  400bd5:	89 9c 24 c8 00 00 00 	mov    %ebx,0xc8(%rsp)
  400bdc:	8b 9c 24 ec 00 00 00 	mov    0xec(%rsp),%ebx
  400be3:	01 d3                	add    %edx,%ebx
  400be5:	8b 94 24 f0 00 00 00 	mov    0xf0(%rsp),%edx
  400bec:	89 9c 24 90 00 00 00 	mov    %ebx,0x90(%rsp)
  400bf3:	8b 9c 24 f4 00 00 00 	mov    0xf4(%rsp),%ebx
  400bfa:	01 d3                	add    %edx,%ebx
  400bfc:	8b 94 24 f8 00 00 00 	mov    0xf8(%rsp),%edx
  400c03:	89 9c 24 98 00 00 00 	mov    %ebx,0x98(%rsp)
  400c0a:	8b 9c 24 fc 00 00 00 	mov    0xfc(%rsp),%ebx
  400c11:	01 d3                	add    %edx,%ebx
  400c13:	8b 94 24 00 01 00 00 	mov    0x100(%rsp),%edx
  400c1a:	89 9c 24 9c 00 00 00 	mov    %ebx,0x9c(%rsp)
  400c21:	8b 9c 24 04 01 00 00 	mov    0x104(%rsp),%ebx
  400c28:	01 d3                	add    %edx,%ebx
  400c2a:	8b 94 24 08 01 00 00 	mov    0x108(%rsp),%edx
  400c31:	89 9c 24 a4 00 00 00 	mov    %ebx,0xa4(%rsp)
  400c38:	8b 9c 24 0c 01 00 00 	mov    0x10c(%rsp),%ebx
  400c3f:	01 d3                	add    %edx,%ebx
  400c41:	89 9c 24 b0 00 00 00 	mov    %ebx,0xb0(%rsp)
  400c48:	8b 94 24 10 01 00 00 	mov    0x110(%rsp),%edx
  400c4f:	8b 9c 24 14 01 00 00 	mov    0x114(%rsp),%ebx
  400c56:	01 d3                	add    %edx,%ebx
  400c58:	8b 94 24 18 01 00 00 	mov    0x118(%rsp),%edx
  400c5f:	89 9c 24 b8 00 00 00 	mov    %ebx,0xb8(%rsp)
  400c66:	8b 9c 24 1c 01 00 00 	mov    0x11c(%rsp),%ebx
  400c6d:	01 da                	add    %ebx,%edx
  400c6f:	89 94 24 c4 00 00 00 	mov    %edx,0xc4(%rsp)
  400c76:	8b 94 24 d0 00 00 00 	mov    0xd0(%rsp),%edx
  400c7d:	0f 1f 00             	nopl   (%rax)
  400c80:	8b 5c 24 04          	mov    0x4(%rsp),%ebx
  400c84:	03 9c 24 a8 00 00 00 	add    0xa8(%rsp),%ebx
  400c8b:	03 5c 24 14          	add    0x14(%rsp),%ebx
  400c8f:	44 03 b4 24 94 00 00 	add    0x94(%rsp),%r14d
  400c96:	00 
  400c97:	03 5c 24 10          	add    0x10(%rsp),%ebx
  400c9b:	44 03 ac 24 a0 00 00 	add    0xa0(%rsp),%r13d
  400ca2:	00 
  400ca3:	03 ac 24 ac 00 00 00 	add    0xac(%rsp),%ebp
  400caa:	44 03 bc 24 b4 00 00 	add    0xb4(%rsp),%r15d
  400cb1:	00 
  400cb2:	44 03 a4 24 bc 00 00 	add    0xbc(%rsp),%r12d
  400cb9:	00 
  400cba:	44 03 9c 24 c8 00 00 	add    0xc8(%rsp),%r11d
  400cc1:	00 
  400cc2:	44 03 94 24 90 00 00 	add    0x90(%rsp),%r10d
  400cc9:	00 
  400cca:	44 03 8c 24 98 00 00 	add    0x98(%rsp),%r9d
  400cd1:	00 
  400cd2:	89 5c 24 04          	mov    %ebx,0x4(%rsp)
  400cd6:	8b 5c 24 08          	mov    0x8(%rsp),%ebx
  400cda:	03 9c 24 c0 00 00 00 	add    0xc0(%rsp),%ebx
  400ce1:	44 03 74 24 28       	add    0x28(%rsp),%r14d
  400ce6:	03 5c 24 1c          	add    0x1c(%rsp),%ebx
  400cea:	44 03 6c 24 30       	add    0x30(%rsp),%r13d
  400cef:	03 5c 24 18          	add    0x18(%rsp),%ebx
  400cf3:	03 6c 24 3c          	add    0x3c(%rsp),%ebp
  400cf7:	44 03 7c 24 40       	add    0x40(%rsp),%r15d
  400cfc:	44 03 64 24 48       	add    0x48(%rsp),%r12d
  400d01:	44 03 5c 24 50       	add    0x50(%rsp),%r11d
  400d06:	44 03 54 24 58       	add    0x58(%rsp),%r10d
  400d0b:	44 03 4c 24 60       	add    0x60(%rsp),%r9d
  400d10:	44 03 74 24 2c       	add    0x2c(%rsp),%r14d
  400d15:	89 5c 24 08          	mov    %ebx,0x8(%rsp)
  400d19:	8b 1c 24             	mov    (%rsp),%ebx
  400d1c:	03 9c 24 cc 00 00 00 	add    0xcc(%rsp),%ebx
  400d23:	44 03 6c 24 34       	add    0x34(%rsp),%r13d
  400d28:	03 5c 24 20          	add    0x20(%rsp),%ebx
  400d2c:	03 6c 24 38          	add    0x38(%rsp),%ebp
  400d30:	03 5c 24 24          	add    0x24(%rsp),%ebx
  400d34:	44 03 7c 24 44       	add    0x44(%rsp),%r15d
  400d39:	44 03 64 24 4c       	add    0x4c(%rsp),%r12d
  400d3e:	44 03 5c 24 54       	add    0x54(%rsp),%r11d
  400d43:	44 03 54 24 5c       	add    0x5c(%rsp),%r10d
  400d48:	44 03 4c 24 64       	add    0x64(%rsp),%r9d
  400d4d:	44 03 84 24 9c 00 00 	add    0x9c(%rsp),%r8d
  400d54:	00 
  400d55:	03 bc 24 a4 00 00 00 	add    0xa4(%rsp),%edi
  400d5c:	83 c0 01             	add    $0x1,%eax
  400d5f:	03 b4 24 b0 00 00 00 	add    0xb0(%rsp),%esi
  400d66:	03 8c 24 b8 00 00 00 	add    0xb8(%rsp),%ecx
  400d6d:	03 94 24 c4 00 00 00 	add    0xc4(%rsp),%edx
  400d74:	44 03 44 24 68       	add    0x68(%rsp),%r8d
  400d79:	03 7c 24 70          	add    0x70(%rsp),%edi
  400d7d:	03 74 24 78          	add    0x78(%rsp),%esi
  400d81:	03 8c 24 84 00 00 00 	add    0x84(%rsp),%ecx
  400d88:	03 94 24 8c 00 00 00 	add    0x8c(%rsp),%edx
  400d8f:	44 03 44 24 6c       	add    0x6c(%rsp),%r8d
  400d94:	03 7c 24 74          	add    0x74(%rsp),%edi
  400d98:	03 74 24 7c          	add    0x7c(%rsp),%esi
  400d9c:	03 8c 24 80 00 00 00 	add    0x80(%rsp),%ecx
  400da3:	03 94 24 88 00 00 00 	add    0x88(%rsp),%edx
  400daa:	39 44 24 0c          	cmp    %eax,0xc(%rsp)
  400dae:	89 1c 24             	mov    %ebx,(%rsp)
  400db1:	0f 87 c9 fe ff ff    	ja     400c80 <main+0x740>
  400db7:	8b 44 24 04          	mov    0x4(%rsp),%eax
  400dbb:	89 9c 24 a8 01 00 00 	mov    %ebx,0x1a8(%rsp)
  400dc2:	44 89 b4 24 ac 01 00 	mov    %r14d,0x1ac(%rsp)
  400dc9:	00 
  400dca:	44 89 ac 24 b0 01 00 	mov    %r13d,0x1b0(%rsp)
  400dd1:	00 
  400dd2:	89 ac 24 b4 01 00 00 	mov    %ebp,0x1b4(%rsp)
  400dd9:	44 89 bc 24 b8 01 00 	mov    %r15d,0x1b8(%rsp)
  400de0:	00 
  400de1:	89 84 24 a0 01 00 00 	mov    %eax,0x1a0(%rsp)
  400de8:	8b 44 24 08          	mov    0x8(%rsp),%eax
  400dec:	44 89 a4 24 bc 01 00 	mov    %r12d,0x1bc(%rsp)
  400df3:	00 
  400df4:	44 89 9c 24 c0 01 00 	mov    %r11d,0x1c0(%rsp)
  400dfb:	00 
  400dfc:	44 89 94 24 c4 01 00 	mov    %r10d,0x1c4(%rsp)
  400e03:	00 
  400e04:	44 89 8c 24 c8 01 00 	mov    %r9d,0x1c8(%rsp)
  400e0b:	00 
  400e0c:	89 84 24 a4 01 00 00 	mov    %eax,0x1a4(%rsp)
  400e13:	44 89 84 24 cc 01 00 	mov    %r8d,0x1cc(%rsp)
  400e1a:	00 
  400e1b:	89 bc 24 d0 01 00 00 	mov    %edi,0x1d0(%rsp)
  400e22:	89 b4 24 d4 01 00 00 	mov    %esi,0x1d4(%rsp)
  400e29:	89 8c 24 d8 01 00 00 	mov    %ecx,0x1d8(%rsp)
  400e30:	89 94 24 dc 01 00 00 	mov    %edx,0x1dc(%rsp)
  400e37:	48 8d bc 24 a0 01 00 	lea    0x1a0(%rsp),%rdi
  400e3e:	00 
  400e3f:	e8 7c 05 00 00       	callq  4013c0 <print_matriu>
  400e44:	48 81 c4 e8 01 00 00 	add    $0x1e8,%rsp
  400e4b:	31 c0                	xor    %eax,%eax
  400e4d:	5b                   	pop    %rbx
  400e4e:	5d                   	pop    %rbp
  400e4f:	41 5c                	pop    %r12
  400e51:	41 5d                	pop    %r13
  400e53:	41 5e                	pop    %r14
  400e55:	41 5f                	pop    %r15
  400e57:	c3                   	retq   
  400e58:	c7 44 24 0c 80 96 98 	movl   $0x989680,0xc(%rsp)
  400e5f:	00 
  400e60:	e9 6b f7 ff ff       	jmpq   4005d0 <main+0x90>

0000000000400e65 <_start>:
  400e65:	31 ed                	xor    %ebp,%ebp
  400e67:	49 89 d1             	mov    %rdx,%r9
  400e6a:	5e                   	pop    %rsi
  400e6b:	48 89 e2             	mov    %rsp,%rdx
  400e6e:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e72:	50                   	push   %rax
  400e73:	54                   	push   %rsp
  400e74:	49 c7 c0 90 14 40 00 	mov    $0x401490,%r8
  400e7b:	48 c7 c1 20 14 40 00 	mov    $0x401420,%rcx
  400e82:	48 c7 c7 40 05 40 00 	mov    $0x400540,%rdi
  400e89:	e8 62 f6 ff ff       	callq  4004f0 <__libc_start_main@plt>
  400e8e:	f4                   	hlt    
  400e8f:	90                   	nop

0000000000400e90 <deregister_tm_clones>:
  400e90:	b8 5f 20 60 00       	mov    $0x60205f,%eax
  400e95:	55                   	push   %rbp
  400e96:	48 2d 58 20 60 00    	sub    $0x602058,%rax
  400e9c:	48 83 f8 0e          	cmp    $0xe,%rax
  400ea0:	48 89 e5             	mov    %rsp,%rbp
  400ea3:	77 02                	ja     400ea7 <deregister_tm_clones+0x17>
  400ea5:	5d                   	pop    %rbp
  400ea6:	c3                   	retq   
  400ea7:	b8 00 00 00 00       	mov    $0x0,%eax
  400eac:	48 85 c0             	test   %rax,%rax
  400eaf:	74 f4                	je     400ea5 <deregister_tm_clones+0x15>
  400eb1:	5d                   	pop    %rbp
  400eb2:	bf 58 20 60 00       	mov    $0x602058,%edi
  400eb7:	ff e0                	jmpq   *%rax
  400eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ec0 <register_tm_clones>:
  400ec0:	b8 58 20 60 00       	mov    $0x602058,%eax
  400ec5:	55                   	push   %rbp
  400ec6:	48 2d 58 20 60 00    	sub    $0x602058,%rax
  400ecc:	48 c1 f8 03          	sar    $0x3,%rax
  400ed0:	48 89 e5             	mov    %rsp,%rbp
  400ed3:	48 89 c2             	mov    %rax,%rdx
  400ed6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400eda:	48 01 d0             	add    %rdx,%rax
  400edd:	48 d1 f8             	sar    %rax
  400ee0:	75 02                	jne    400ee4 <register_tm_clones+0x24>
  400ee2:	5d                   	pop    %rbp
  400ee3:	c3                   	retq   
  400ee4:	ba 00 00 00 00       	mov    $0x0,%edx
  400ee9:	48 85 d2             	test   %rdx,%rdx
  400eec:	74 f4                	je     400ee2 <register_tm_clones+0x22>
  400eee:	5d                   	pop    %rbp
  400eef:	48 89 c6             	mov    %rax,%rsi
  400ef2:	bf 58 20 60 00       	mov    $0x602058,%edi
  400ef7:	ff e2                	jmpq   *%rdx
  400ef9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f00 <__do_global_dtors_aux>:
  400f00:	80 3d 51 11 20 00 00 	cmpb   $0x0,0x201151(%rip)        # 602058 <__TMC_END__>
  400f07:	75 11                	jne    400f1a <__do_global_dtors_aux+0x1a>
  400f09:	55                   	push   %rbp
  400f0a:	48 89 e5             	mov    %rsp,%rbp
  400f0d:	e8 7e ff ff ff       	callq  400e90 <deregister_tm_clones>
  400f12:	5d                   	pop    %rbp
  400f13:	c6 05 3e 11 20 00 01 	movb   $0x1,0x20113e(%rip)        # 602058 <__TMC_END__>
  400f1a:	f3 c3                	repz retq 
  400f1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f20 <frame_dummy>:
  400f20:	48 83 3d f8 0e 20 00 	cmpq   $0x0,0x200ef8(%rip)        # 601e20 <__JCR_END__>
  400f27:	00 
  400f28:	74 1e                	je     400f48 <frame_dummy+0x28>
  400f2a:	b8 00 00 00 00       	mov    $0x0,%eax
  400f2f:	48 85 c0             	test   %rax,%rax
  400f32:	74 14                	je     400f48 <frame_dummy+0x28>
  400f34:	55                   	push   %rbp
  400f35:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  400f3a:	48 89 e5             	mov    %rsp,%rbp
  400f3d:	ff d0                	callq  *%rax
  400f3f:	5d                   	pop    %rbp
  400f40:	e9 7b ff ff ff       	jmpq   400ec0 <register_tm_clones>
  400f45:	0f 1f 00             	nopl   (%rax)
  400f48:	e9 73 ff ff ff       	jmpq   400ec0 <register_tm_clones>
  400f4d:	0f 1f 00             	nopl   (%rax)

0000000000400f50 <multiplica>:
  400f50:	41 57                	push   %r15
  400f52:	85 c9                	test   %ecx,%ecx
  400f54:	41 56                	push   %r14
  400f56:	41 55                	push   %r13
  400f58:	41 54                	push   %r12
  400f5a:	55                   	push   %rbp
  400f5b:	53                   	push   %rbx
  400f5c:	89 4c 24 fc          	mov    %ecx,-0x4(%rsp)
  400f60:	0f 84 4a 04 00 00    	je     4013b0 <multiplica+0x460>
  400f66:	8b 42 1c             	mov    0x1c(%rdx),%eax
  400f69:	44 8b 2a             	mov    (%rdx),%r13d
  400f6c:	44 8b 62 04          	mov    0x4(%rdx),%r12d
  400f70:	8b 6a 08             	mov    0x8(%rdx),%ebp
  400f73:	8b 5a 0c             	mov    0xc(%rdx),%ebx
  400f76:	44 8b 5a 10          	mov    0x10(%rdx),%r11d
  400f7a:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  400f7e:	8b 42 20             	mov    0x20(%rdx),%eax
  400f81:	44 8b 52 14          	mov    0x14(%rdx),%r10d
  400f85:	44 8b 4a 18          	mov    0x18(%rdx),%r9d
  400f89:	c7 44 24 f8 00 00 00 	movl   $0x0,-0x8(%rsp)
  400f90:	00 
  400f91:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  400f95:	8b 42 24             	mov    0x24(%rdx),%eax
  400f98:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  400f9c:	8b 42 28             	mov    0x28(%rdx),%eax
  400f9f:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  400fa3:	8b 42 2c             	mov    0x2c(%rdx),%eax
  400fa6:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  400faa:	8b 42 30             	mov    0x30(%rdx),%eax
  400fad:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  400fb1:	8b 42 34             	mov    0x34(%rdx),%eax
  400fb4:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  400fb8:	8b 42 38             	mov    0x38(%rdx),%eax
  400fbb:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  400fbf:	8b 42 3c             	mov    0x3c(%rdx),%eax
  400fc2:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  400fc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400fcd:	00 00 00 
  400fd0:	8b 07                	mov    (%rdi),%eax
  400fd2:	0f af 06             	imul   (%rsi),%eax
  400fd5:	41 01 c5             	add    %eax,%r13d
  400fd8:	44 89 2a             	mov    %r13d,(%rdx)
  400fdb:	8b 47 04             	mov    0x4(%rdi),%eax
  400fde:	0f af 46 10          	imul   0x10(%rsi),%eax
  400fe2:	41 01 c5             	add    %eax,%r13d
  400fe5:	44 89 2a             	mov    %r13d,(%rdx)
  400fe8:	44 8b 77 08          	mov    0x8(%rdi),%r14d
  400fec:	8b 46 20             	mov    0x20(%rsi),%eax
  400fef:	41 0f af c6          	imul   %r14d,%eax
  400ff3:	41 01 c5             	add    %eax,%r13d
  400ff6:	44 89 2a             	mov    %r13d,(%rdx)
  400ff9:	8b 4f 0c             	mov    0xc(%rdi),%ecx
  400ffc:	8b 46 30             	mov    0x30(%rsi),%eax
  400fff:	0f af c1             	imul   %ecx,%eax
  401002:	41 01 c5             	add    %eax,%r13d
  401005:	44 89 2a             	mov    %r13d,(%rdx)
  401008:	8b 07                	mov    (%rdi),%eax
  40100a:	44 8b 46 04          	mov    0x4(%rsi),%r8d
  40100e:	44 0f af c0          	imul   %eax,%r8d
  401012:	45 01 c4             	add    %r8d,%r12d
  401015:	44 89 62 04          	mov    %r12d,0x4(%rdx)
  401019:	44 8b 47 04          	mov    0x4(%rdi),%r8d
  40101d:	44 0f af 46 14       	imul   0x14(%rsi),%r8d
  401022:	45 01 c4             	add    %r8d,%r12d
  401025:	44 89 62 04          	mov    %r12d,0x4(%rdx)
  401029:	44 0f af 76 24       	imul   0x24(%rsi),%r14d
  40102e:	45 01 f4             	add    %r14d,%r12d
  401031:	44 89 62 04          	mov    %r12d,0x4(%rdx)
  401035:	44 8b 46 34          	mov    0x34(%rsi),%r8d
  401039:	44 0f af c1          	imul   %ecx,%r8d
  40103d:	45 01 c4             	add    %r8d,%r12d
  401040:	44 89 62 04          	mov    %r12d,0x4(%rdx)
  401044:	44 8b 46 08          	mov    0x8(%rsi),%r8d
  401048:	44 0f af c0          	imul   %eax,%r8d
  40104c:	44 01 c5             	add    %r8d,%ebp
  40104f:	89 6a 08             	mov    %ebp,0x8(%rdx)
  401052:	44 8b 77 04          	mov    0x4(%rdi),%r14d
  401056:	44 8b 46 18          	mov    0x18(%rsi),%r8d
  40105a:	45 0f af c6          	imul   %r14d,%r8d
  40105e:	44 01 c5             	add    %r8d,%ebp
  401061:	89 6a 08             	mov    %ebp,0x8(%rdx)
  401064:	44 8b 47 08          	mov    0x8(%rdi),%r8d
  401068:	44 0f af 46 28       	imul   0x28(%rsi),%r8d
  40106d:	41 01 e8             	add    %ebp,%r8d
  401070:	44 89 42 08          	mov    %r8d,0x8(%rdx)
  401074:	0f af 4e 38          	imul   0x38(%rsi),%ecx
  401078:	89 cd                	mov    %ecx,%ebp
  40107a:	44 01 c5             	add    %r8d,%ebp
  40107d:	89 6a 08             	mov    %ebp,0x8(%rdx)
  401080:	0f af 46 0c          	imul   0xc(%rsi),%eax
  401084:	01 d8                	add    %ebx,%eax
  401086:	89 42 0c             	mov    %eax,0xc(%rdx)
  401089:	8b 5e 1c             	mov    0x1c(%rsi),%ebx
  40108c:	41 0f af de          	imul   %r14d,%ebx
  401090:	01 c3                	add    %eax,%ebx
  401092:	89 5a 0c             	mov    %ebx,0xc(%rdx)
  401095:	8b 4f 08             	mov    0x8(%rdi),%ecx
  401098:	0f af 4e 2c          	imul   0x2c(%rsi),%ecx
  40109c:	01 cb                	add    %ecx,%ebx
  40109e:	89 5a 0c             	mov    %ebx,0xc(%rdx)
  4010a1:	8b 4f 0c             	mov    0xc(%rdi),%ecx
  4010a4:	0f af 4e 3c          	imul   0x3c(%rsi),%ecx
  4010a8:	01 cb                	add    %ecx,%ebx
  4010aa:	89 5a 0c             	mov    %ebx,0xc(%rdx)
  4010ad:	8b 47 10             	mov    0x10(%rdi),%eax
  4010b0:	0f af 06             	imul   (%rsi),%eax
  4010b3:	41 01 c3             	add    %eax,%r11d
  4010b6:	44 89 5a 10          	mov    %r11d,0x10(%rdx)
  4010ba:	8b 47 14             	mov    0x14(%rdi),%eax
  4010bd:	0f af 46 10          	imul   0x10(%rsi),%eax
  4010c1:	41 01 c3             	add    %eax,%r11d
  4010c4:	44 89 5a 10          	mov    %r11d,0x10(%rdx)
  4010c8:	44 8b 77 18          	mov    0x18(%rdi),%r14d
  4010cc:	8b 46 20             	mov    0x20(%rsi),%eax
  4010cf:	41 0f af c6          	imul   %r14d,%eax
  4010d3:	41 01 c3             	add    %eax,%r11d
  4010d6:	44 89 5a 10          	mov    %r11d,0x10(%rdx)
  4010da:	8b 4f 1c             	mov    0x1c(%rdi),%ecx
  4010dd:	8b 46 30             	mov    0x30(%rsi),%eax
  4010e0:	0f af c1             	imul   %ecx,%eax
  4010e3:	41 01 c3             	add    %eax,%r11d
  4010e6:	44 89 5a 10          	mov    %r11d,0x10(%rdx)
  4010ea:	8b 47 10             	mov    0x10(%rdi),%eax
  4010ed:	44 8b 46 04          	mov    0x4(%rsi),%r8d
  4010f1:	44 0f af c0          	imul   %eax,%r8d
  4010f5:	45 01 c2             	add    %r8d,%r10d
  4010f8:	44 89 52 14          	mov    %r10d,0x14(%rdx)
  4010fc:	44 8b 47 14          	mov    0x14(%rdi),%r8d
  401100:	44 0f af 46 14       	imul   0x14(%rsi),%r8d
  401105:	45 01 c2             	add    %r8d,%r10d
  401108:	44 89 52 14          	mov    %r10d,0x14(%rdx)
  40110c:	44 0f af 76 24       	imul   0x24(%rsi),%r14d
  401111:	45 01 f2             	add    %r14d,%r10d
  401114:	44 89 52 14          	mov    %r10d,0x14(%rdx)
  401118:	44 8b 46 34          	mov    0x34(%rsi),%r8d
  40111c:	44 0f af c1          	imul   %ecx,%r8d
  401120:	45 01 c2             	add    %r8d,%r10d
  401123:	44 89 52 14          	mov    %r10d,0x14(%rdx)
  401127:	44 8b 46 08          	mov    0x8(%rsi),%r8d
  40112b:	44 0f af c0          	imul   %eax,%r8d
  40112f:	45 01 c1             	add    %r8d,%r9d
  401132:	44 89 4a 18          	mov    %r9d,0x18(%rdx)
  401136:	44 8b 77 14          	mov    0x14(%rdi),%r14d
  40113a:	44 8b 46 18          	mov    0x18(%rsi),%r8d
  40113e:	45 0f af c6          	imul   %r14d,%r8d
  401142:	45 01 c1             	add    %r8d,%r9d
  401145:	44 89 4a 18          	mov    %r9d,0x18(%rdx)
  401149:	44 8b 47 18          	mov    0x18(%rdi),%r8d
  40114d:	44 0f af 46 28       	imul   0x28(%rsi),%r8d
  401152:	45 01 c8             	add    %r9d,%r8d
  401155:	44 89 42 18          	mov    %r8d,0x18(%rdx)
  401159:	0f af 4e 38          	imul   0x38(%rsi),%ecx
  40115d:	41 89 c9             	mov    %ecx,%r9d
  401160:	45 01 c1             	add    %r8d,%r9d
  401163:	44 8b 44 24 d4       	mov    -0x2c(%rsp),%r8d
  401168:	44 89 4a 18          	mov    %r9d,0x18(%rdx)
  40116c:	0f af 46 0c          	imul   0xc(%rsi),%eax
  401170:	41 01 c0             	add    %eax,%r8d
  401173:	44 89 42 1c          	mov    %r8d,0x1c(%rdx)
  401177:	44 0f af 76 1c       	imul   0x1c(%rsi),%r14d
  40117c:	45 01 c6             	add    %r8d,%r14d
  40117f:	44 89 72 1c          	mov    %r14d,0x1c(%rdx)
  401183:	44 8b 47 18          	mov    0x18(%rdi),%r8d
  401187:	44 0f af 46 2c       	imul   0x2c(%rsi),%r8d
  40118c:	45 01 f0             	add    %r14d,%r8d
  40118f:	44 89 42 1c          	mov    %r8d,0x1c(%rdx)
  401193:	8b 4f 1c             	mov    0x1c(%rdi),%ecx
  401196:	0f af 4e 3c          	imul   0x3c(%rsi),%ecx
  40119a:	41 8d 04 08          	lea    (%r8,%rcx,1),%eax
  40119e:	89 42 1c             	mov    %eax,0x1c(%rdx)
  4011a1:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4011a5:	8b 47 20             	mov    0x20(%rdi),%eax
  4011a8:	0f af 06             	imul   (%rsi),%eax
  4011ab:	03 44 24 d8          	add    -0x28(%rsp),%eax
  4011af:	89 42 20             	mov    %eax,0x20(%rdx)
  4011b2:	8b 4f 24             	mov    0x24(%rdi),%ecx
  4011b5:	0f af 4e 10          	imul   0x10(%rsi),%ecx
  4011b9:	01 c8                	add    %ecx,%eax
  4011bb:	89 42 20             	mov    %eax,0x20(%rdx)
  4011be:	44 8b 77 28          	mov    0x28(%rdi),%r14d
  4011c2:	8b 4e 20             	mov    0x20(%rsi),%ecx
  4011c5:	41 0f af ce          	imul   %r14d,%ecx
  4011c9:	01 c8                	add    %ecx,%eax
  4011cb:	89 42 20             	mov    %eax,0x20(%rdx)
  4011ce:	8b 4f 2c             	mov    0x2c(%rdi),%ecx
  4011d1:	44 8b 46 30          	mov    0x30(%rsi),%r8d
  4011d5:	44 0f af c1          	imul   %ecx,%r8d
  4011d9:	44 01 c0             	add    %r8d,%eax
  4011dc:	89 42 20             	mov    %eax,0x20(%rdx)
  4011df:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4011e3:	44 8b 7e 04          	mov    0x4(%rsi),%r15d
  4011e7:	8b 47 20             	mov    0x20(%rdi),%eax
  4011ea:	44 0f af f8          	imul   %eax,%r15d
  4011ee:	44 03 7c 24 dc       	add    -0x24(%rsp),%r15d
  4011f3:	44 89 7a 24          	mov    %r15d,0x24(%rdx)
  4011f7:	44 8b 47 24          	mov    0x24(%rdi),%r8d
  4011fb:	44 0f af 46 14       	imul   0x14(%rsi),%r8d
  401200:	45 01 f8             	add    %r15d,%r8d
  401203:	44 89 42 24          	mov    %r8d,0x24(%rdx)
  401207:	44 0f af 76 24       	imul   0x24(%rsi),%r14d
  40120c:	45 01 c6             	add    %r8d,%r14d
  40120f:	44 89 72 24          	mov    %r14d,0x24(%rdx)
  401213:	44 8b 7e 34          	mov    0x34(%rsi),%r15d
  401217:	44 0f af f9          	imul   %ecx,%r15d
  40121b:	45 01 f7             	add    %r14d,%r15d
  40121e:	44 89 7a 24          	mov    %r15d,0x24(%rdx)
  401222:	44 89 7c 24 dc       	mov    %r15d,-0x24(%rsp)
  401227:	44 8b 7e 08          	mov    0x8(%rsi),%r15d
  40122b:	44 0f af f8          	imul   %eax,%r15d
  40122f:	44 03 7c 24 e0       	add    -0x20(%rsp),%r15d
  401234:	44 89 7a 28          	mov    %r15d,0x28(%rdx)
  401238:	44 8b 77 24          	mov    0x24(%rdi),%r14d
  40123c:	44 8b 46 18          	mov    0x18(%rsi),%r8d
  401240:	45 0f af c6          	imul   %r14d,%r8d
  401244:	45 01 c7             	add    %r8d,%r15d
  401247:	44 89 7a 28          	mov    %r15d,0x28(%rdx)
  40124b:	44 8b 47 28          	mov    0x28(%rdi),%r8d
  40124f:	44 0f af 46 28       	imul   0x28(%rsi),%r8d
  401254:	45 01 f8             	add    %r15d,%r8d
  401257:	44 89 42 28          	mov    %r8d,0x28(%rdx)
  40125b:	0f af 4e 38          	imul   0x38(%rsi),%ecx
  40125f:	44 01 c1             	add    %r8d,%ecx
  401262:	44 8b 44 24 e4       	mov    -0x1c(%rsp),%r8d
  401267:	89 4a 28             	mov    %ecx,0x28(%rdx)
  40126a:	89 4c 24 e0          	mov    %ecx,-0x20(%rsp)
  40126e:	0f af 46 0c          	imul   0xc(%rsi),%eax
  401272:	41 01 c0             	add    %eax,%r8d
  401275:	44 89 42 2c          	mov    %r8d,0x2c(%rdx)
  401279:	44 0f af 76 1c       	imul   0x1c(%rsi),%r14d
  40127e:	45 01 c6             	add    %r8d,%r14d
  401281:	44 89 72 2c          	mov    %r14d,0x2c(%rdx)
  401285:	44 8b 47 28          	mov    0x28(%rdi),%r8d
  401289:	44 0f af 46 2c       	imul   0x2c(%rsi),%r8d
  40128e:	45 01 f0             	add    %r14d,%r8d
  401291:	44 89 42 2c          	mov    %r8d,0x2c(%rdx)
  401295:	8b 4f 2c             	mov    0x2c(%rdi),%ecx
  401298:	0f af 4e 3c          	imul   0x3c(%rsi),%ecx
  40129c:	41 8d 04 08          	lea    (%r8,%rcx,1),%eax
  4012a0:	89 42 2c             	mov    %eax,0x2c(%rdx)
  4012a3:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4012a7:	8b 47 30             	mov    0x30(%rdi),%eax
  4012aa:	0f af 06             	imul   (%rsi),%eax
  4012ad:	03 44 24 e8          	add    -0x18(%rsp),%eax
  4012b1:	89 42 30             	mov    %eax,0x30(%rdx)
  4012b4:	8b 4f 34             	mov    0x34(%rdi),%ecx
  4012b7:	0f af 4e 10          	imul   0x10(%rsi),%ecx
  4012bb:	01 c8                	add    %ecx,%eax
  4012bd:	89 42 30             	mov    %eax,0x30(%rdx)
  4012c0:	44 8b 77 38          	mov    0x38(%rdi),%r14d
  4012c4:	8b 4e 20             	mov    0x20(%rsi),%ecx
  4012c7:	41 0f af ce          	imul   %r14d,%ecx
  4012cb:	01 c8                	add    %ecx,%eax
  4012cd:	89 42 30             	mov    %eax,0x30(%rdx)
  4012d0:	8b 4f 3c             	mov    0x3c(%rdi),%ecx
  4012d3:	44 8b 46 30          	mov    0x30(%rsi),%r8d
  4012d7:	44 0f af c1          	imul   %ecx,%r8d
  4012db:	44 01 c0             	add    %r8d,%eax
  4012de:	89 42 30             	mov    %eax,0x30(%rdx)
  4012e1:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012e5:	44 8b 7e 04          	mov    0x4(%rsi),%r15d
  4012e9:	8b 47 30             	mov    0x30(%rdi),%eax
  4012ec:	44 0f af f8          	imul   %eax,%r15d
  4012f0:	44 03 7c 24 ec       	add    -0x14(%rsp),%r15d
  4012f5:	44 89 7a 34          	mov    %r15d,0x34(%rdx)
  4012f9:	44 8b 47 34          	mov    0x34(%rdi),%r8d
  4012fd:	44 0f af 46 14       	imul   0x14(%rsi),%r8d
  401302:	45 01 f8             	add    %r15d,%r8d
  401305:	44 89 42 34          	mov    %r8d,0x34(%rdx)
  401309:	44 0f af 76 24       	imul   0x24(%rsi),%r14d
  40130e:	45 01 c6             	add    %r8d,%r14d
  401311:	44 89 72 34          	mov    %r14d,0x34(%rdx)
  401315:	44 8b 7e 34          	mov    0x34(%rsi),%r15d
  401319:	44 0f af f9          	imul   %ecx,%r15d
  40131d:	45 01 fe             	add    %r15d,%r14d
  401320:	44 89 72 34          	mov    %r14d,0x34(%rdx)
  401324:	44 8b 7e 08          	mov    0x8(%rsi),%r15d
  401328:	44 89 74 24 ec       	mov    %r14d,-0x14(%rsp)
  40132d:	44 0f af f8          	imul   %eax,%r15d
  401331:	44 03 7c 24 f0       	add    -0x10(%rsp),%r15d
  401336:	44 89 7a 38          	mov    %r15d,0x38(%rdx)
  40133a:	44 8b 77 34          	mov    0x34(%rdi),%r14d
  40133e:	44 8b 46 18          	mov    0x18(%rsi),%r8d
  401342:	45 0f af c6          	imul   %r14d,%r8d
  401346:	45 01 c7             	add    %r8d,%r15d
  401349:	44 89 7a 38          	mov    %r15d,0x38(%rdx)
  40134d:	44 8b 47 38          	mov    0x38(%rdi),%r8d
  401351:	44 0f af 46 28       	imul   0x28(%rsi),%r8d
  401356:	45 01 f8             	add    %r15d,%r8d
  401359:	44 89 42 38          	mov    %r8d,0x38(%rdx)
  40135d:	0f af 4e 38          	imul   0x38(%rsi),%ecx
  401361:	44 01 c1             	add    %r8d,%ecx
  401364:	89 4c 24 f0          	mov    %ecx,-0x10(%rsp)
  401368:	89 4a 38             	mov    %ecx,0x38(%rdx)
  40136b:	0f af 46 0c          	imul   0xc(%rsi),%eax
  40136f:	83 44 24 f8 01       	addl   $0x1,-0x8(%rsp)
  401374:	03 44 24 f4          	add    -0xc(%rsp),%eax
  401378:	89 42 3c             	mov    %eax,0x3c(%rdx)
  40137b:	44 0f af 76 1c       	imul   0x1c(%rsi),%r14d
  401380:	44 01 f0             	add    %r14d,%eax
  401383:	89 42 3c             	mov    %eax,0x3c(%rdx)
  401386:	8b 4f 38             	mov    0x38(%rdi),%ecx
  401389:	0f af 4e 2c          	imul   0x2c(%rsi),%ecx
  40138d:	01 c8                	add    %ecx,%eax
  40138f:	89 42 3c             	mov    %eax,0x3c(%rdx)
  401392:	8b 4f 3c             	mov    0x3c(%rdi),%ecx
  401395:	0f af 4e 3c          	imul   0x3c(%rsi),%ecx
  401399:	01 c8                	add    %ecx,%eax
  40139b:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40139f:	89 42 3c             	mov    %eax,0x3c(%rdx)
  4013a2:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
  4013a6:	39 44 24 f8          	cmp    %eax,-0x8(%rsp)
  4013aa:	0f 85 20 fc ff ff    	jne    400fd0 <multiplica+0x80>
  4013b0:	5b                   	pop    %rbx
  4013b1:	5d                   	pop    %rbp
  4013b2:	41 5c                	pop    %r12
  4013b4:	41 5d                	pop    %r13
  4013b6:	41 5e                	pop    %r14
  4013b8:	41 5f                	pop    %r15
  4013ba:	c3                   	retq   
  4013bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013c0 <print_matriu>:
  4013c0:	41 55                	push   %r13
  4013c2:	49 89 fd             	mov    %rdi,%r13
  4013c5:	41 54                	push   %r12
  4013c7:	45 31 e4             	xor    %r12d,%r12d
  4013ca:	55                   	push   %rbp
  4013cb:	53                   	push   %rbx
  4013cc:	48 83 ec 08          	sub    $0x8,%rsp
  4013d0:	4b 8d 6c 25 00       	lea    0x0(%r13,%r12,1),%rbp
  4013d5:	31 db                	xor    %ebx,%ebx
  4013d7:	8b 54 1d 00          	mov    0x0(%rbp,%rbx,1),%edx
  4013db:	31 c0                	xor    %eax,%eax
  4013dd:	be a4 14 40 00       	mov    $0x4014a4,%esi
  4013e2:	bf 01 00 00 00       	mov    $0x1,%edi
  4013e7:	48 83 c3 04          	add    $0x4,%rbx
  4013eb:	e8 30 f1 ff ff       	callq  400520 <__printf_chk@plt>
  4013f0:	48 83 fb 10          	cmp    $0x10,%rbx
  4013f4:	75 e1                	jne    4013d7 <print_matriu+0x17>
  4013f6:	bf 0a 00 00 00       	mov    $0xa,%edi
  4013fb:	49 83 c4 10          	add    $0x10,%r12
  4013ff:	e8 dc f0 ff ff       	callq  4004e0 <putchar@plt>
  401404:	49 83 fc 40          	cmp    $0x40,%r12
  401408:	75 c6                	jne    4013d0 <print_matriu+0x10>
  40140a:	48 83 c4 08          	add    $0x8,%rsp
  40140e:	5b                   	pop    %rbx
  40140f:	5d                   	pop    %rbp
  401410:	41 5c                	pop    %r12
  401412:	41 5d                	pop    %r13
  401414:	c3                   	retq   
  401415:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40141c:	00 00 00 
  40141f:	90                   	nop

0000000000401420 <__libc_csu_init>:
  401420:	41 57                	push   %r15
  401422:	41 89 ff             	mov    %edi,%r15d
  401425:	41 56                	push   %r14
  401427:	49 89 f6             	mov    %rsi,%r14
  40142a:	41 55                	push   %r13
  40142c:	49 89 d5             	mov    %rdx,%r13
  40142f:	41 54                	push   %r12
  401431:	4c 8d 25 d8 09 20 00 	lea    0x2009d8(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  401438:	55                   	push   %rbp
  401439:	48 8d 2d d8 09 20 00 	lea    0x2009d8(%rip),%rbp        # 601e18 <__init_array_end>
  401440:	53                   	push   %rbx
  401441:	4c 29 e5             	sub    %r12,%rbp
  401444:	31 db                	xor    %ebx,%ebx
  401446:	48 c1 fd 03          	sar    $0x3,%rbp
  40144a:	48 83 ec 08          	sub    $0x8,%rsp
  40144e:	e8 5d f0 ff ff       	callq  4004b0 <_init>
  401453:	48 85 ed             	test   %rbp,%rbp
  401456:	74 1e                	je     401476 <__libc_csu_init+0x56>
  401458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40145f:	00 
  401460:	4c 89 ea             	mov    %r13,%rdx
  401463:	4c 89 f6             	mov    %r14,%rsi
  401466:	44 89 ff             	mov    %r15d,%edi
  401469:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40146d:	48 83 c3 01          	add    $0x1,%rbx
  401471:	48 39 eb             	cmp    %rbp,%rbx
  401474:	75 ea                	jne    401460 <__libc_csu_init+0x40>
  401476:	48 83 c4 08          	add    $0x8,%rsp
  40147a:	5b                   	pop    %rbx
  40147b:	5d                   	pop    %rbp
  40147c:	41 5c                	pop    %r12
  40147e:	41 5d                	pop    %r13
  401480:	41 5e                	pop    %r14
  401482:	41 5f                	pop    %r15
  401484:	c3                   	retq   
  401485:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40148c:	00 00 00 00 

0000000000401490 <__libc_csu_fini>:
  401490:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000401494 <_fini>:
  401494:	48 83 ec 08          	sub    $0x8,%rsp
  401498:	48 83 c4 08          	add    $0x8,%rsp
  40149c:	c3                   	retq   
