	.data
print:	.asciiz "Enter a number: "
itis:	.asciiz "It is Armstrong"
itsnot:	.asciiz "It is not"
SPACE:	.asciiz " "


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

		add $t6, $zero , $t2
		

try:	div $t2, $t1
		mflo $t2		#n/10
		mfhi $t4		#n%10

		addi $t5, $zero , 1
		mul $t5, $t4, $t4
		mul $t5, $t5, $t4
		add $t0, $t0, $t5

		bne $t2, 0, try

		beq $t0, $t6, yes
		li $v0, 4
		la $a0, itsnot
		syscall
		j exit

yes:	li $v0, 4
		la $a0, itis
		syscall
		

exit:	li $v0, 10
		syscall

