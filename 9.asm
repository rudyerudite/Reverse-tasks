extern scanf

section .data
	in: dd "%d",0
	a dd 0
	b dd 0

section .text
	global main

	main:
	push ebp
	mov ebp,esp

	push b
	push in
	call scanf
	
	mov eax,0
	mov ebx,0
	mov ecx,0
	mov edx,0

	l1:
	
	push a
	push in
	call scanf
	
	mov eax,[a]
	add edx,eax
	cmp eax,ebx
	jg store
	jmp increm
	
	store:
	mov ebx,eax
	jmp increm
	
	increm:
	inc ecx
	cmp ecx,[b]
	jne l1
	cmp ecx,[b]
	je gone

	gone:
	leave
	ret