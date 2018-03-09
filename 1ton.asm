extern printf
extern scanf

section .data
	msg: db "Enter a number:",10,0
	in: dd "%d"
	sum:db "sum is:"
	

	n: dd 0
	
section .text
	global main

	main:

	push ebp
	mov ebp,esp

	push msg
	call printf

	push n
	push in
	call scanf

	mov ebx,0
	mov ecx,0
	
	mov eax,[n]
	add eax,1
	
	l1:
	add ebx,ecx
	inc ecx
	cmp ecx,eax 
	jne l1

	push ebx
	push in
	call printf
 
	leave 
	ret
	
	
	

	
	
