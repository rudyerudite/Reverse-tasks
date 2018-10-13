extern printf			
extern scanf				

section .data
	msg:db "Enter your name here:",10,0
	in:db "%s",0

	name: db 0
	
	msg1: db "Hey %s! Hope you liked my code!",10,0
	
section .text				// simply prints a greeting message
	global main

	main:
	push ebp
	mov ebp,esp

	push msg
	call printf

	
	lea eax,[ebx+0x4]
	push in
	call scanf

	pop eax
	push msg1
	call printf

	leave
	ret



