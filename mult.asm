extern scanf
extern printf

section .data
	num dd 0
	fact: dd 1,0
	acsp: dd "%d"
	acsp1: dw "%s"
	out1: db "Enter the number:",10,0
	till dd 0


section .text
	global main

	main:

	push ebp
	mov ebp,esp

	push out1
	;push acsp1
	call printf

	push num
	push acsp
	call scanf

	push out1
	call printf

	push till
	push acsp
	call scanf

	inc dword [till]

	l1:
	mov ebx, [num]
	mov ecx, [fact] 
	imul ebx, ecx

	push ebx
	push acsp
	call printf

	inc dword [fact]
	mov ebx, [fact]
	mov ecx, [till]
	cmp ebx,ecx
	jne l1

	leave 
	ret








	


	




