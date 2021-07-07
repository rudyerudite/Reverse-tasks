.data
print:	.asciiz "Enter a number: "
space:	.asciiz " "


	.text
	.globl main
main:	
		li $v0, 4
		la $a0, print
		syscall

		li $t0, 1
		li $t1, 1

		li $v0, 5
		syscall

		move $t2, $v0

		li $v0,1
		move $a0, $t0
		syscall

		li $v0, 4
		la $a0, space
		syscall

		li $v0, 1
		move $a0, $t1
		syscall

		li $v0, 4
		la $a0, space
		syscall

		addi $t2, $t2, -2

loop:	add $t3, $t1, $t0
		li $v0, 1
		move $a0, $t3
		syscall

		li $v0, 4
		la $a0, space
		syscall

		move $t0, $t1
		move $t1, $t3

		addi $t2, $t2, -1

		bne $t2, 0, loop

		li $v0, 10
		syscall
		