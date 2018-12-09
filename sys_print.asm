section .data

	msg:db  "Enter ya name:",0,10
	len1 equ $ -msg

	name: db "%s"

	;msg1 :db "Hey ",10
	;len2 equ $ -msg1

	;msg2: db " Hope u have a good day",0
	;len3 equ $ -msg2

section.text

	global main

	main:

	mov eax,4
	mov ebx,1
	mov ecx,msg
	mov edx,len1
	int 0x80

	mov eax,3
	mov ebx,0
	mov ecx,name
	mov edx,20
	int 0x80

	mov eax,4
	mov ebx,1
	mov ecx,name
	mov edx,20
	int 0x80

	mov eax,1
	mov ebx,0
	int 0x80







