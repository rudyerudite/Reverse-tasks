extern printf
extern scanf

section .data
	input:db "input a string",10,0
	output:db "%s",0

section .text
	global main

	main:
	push ebp
	mov ebp,esp

	push input
	call printf

	lea eax,[ebx+0x4]
	push output,

	call scanf

	pop eax
	push output
	call printf

leave
ret
