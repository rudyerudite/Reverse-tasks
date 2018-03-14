extern printf
extern scanf

section .data
		n dd 0
		out: db "%d",0
		fine:db "It's a prime number",10,0
		n_fine:db "It's not a prime number",10,0


section .text
		global main

		main:
		push ebp
		mov ebp,esp

		push n
		push out
		call scanf

		mov ecx,2

		l1:

		mov edx,0
		mov eax,[n]
		mov ebx,ecx
		div ebx
		inc ecx

		cmp ecx,[n]
		je p1

		cmp edx,0
		jne l1
		jmp p2

		p1:
		push fine
		call printf
		jmp e

		p2:
		push n_fine
		call printf

		e:
		leave 
		ret
		



		