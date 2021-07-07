	.data
message:

	.text
	.globl main
main:

	li $s0,101
	
Sum:	
	move $8, $s0
	addi $8,$8,1
	move $20, $0
	move $17, $0

loop:
	slt $18,$17, $s0
	beq $18,$0,endloop
	add $20,$20,$17
	add $17,$17,1
	j loop
	nop
	
endloop:
	move $4, $20
	li $v0, 1
	syscall

_exit:
	li $v0,10
	syscall
	nop	
	

