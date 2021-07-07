	.data
print:	.asciiz "Enter a number: "
space:	.asciiz " "

	.text
	.globl main
main:	
		li $v0, 4
		la $a0, print
		syscall

		li $v0, 5
		syscall

		move $t2, $v0
		addi $t1, $zero, 10
		li $s3, 0	#cnt

try:	div $t2, $t1
		mflo $t2		#n/10
		mfhi $t4		#n%10

		andi $s4, $t4, 1
		beq $s4, 0, test

		li $v0, 1
		move $a0, $t4
		syscall

		li $v0, 4
		la $a0, space
		syscall

		

test:	bne $t2, $zero, try

		li $v0, 10
		syscall


