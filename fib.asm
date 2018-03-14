extern scanf
extern printf								//only prints the nth fibonacci number


section .data
		n dd 0
		out: dd "%d"


section .text
		global main

		main:

		push ebp
		mov ebp,esp

		push n
		push out
		call scanf

		mov eax,0
		mov ebx,0
		mov ecx,1
		mov edx,2	

		fib:

		mov ebx,eax		
		add ebx,ecx

		mov eax,ecx	
		mov ecx,ebx
		inc edx
		cmp edx,[n]
		jne fib

		push ebx
		push out
		call printf

		leave
		ret






		





