;The following code is x86 based. 

extern printf

section .data
	out:dd "%d",0

section .text
	global main

	main:
	push ebp
	mov ebp,esp
	mov ebx,0

	

	l1:
	inc ebx
	push ebx
	push out
	call printf
	cmp ebx,10
	jne l1
	
	
	
	leave
	ret
	
