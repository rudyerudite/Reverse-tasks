extern printf
extern scanf

section .data
	msg: db "enter number:",10,0
	out: dd "%d",0

	a: dd 0
	b: dd 0

section .text
	global main

	main:
	push ebp
	mov ebp,esp

	
	push msg
	call printf

	push a
	push out
	call scanf

	push b
	push out
	call scanf

	mov eax,[a]
	mov ebx,[b]
	
	add eax,ebx
	push eax
	push out
	call printf

	leave 
	ret
