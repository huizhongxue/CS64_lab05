# print_array.asm program
# Don't forget to:
#   make all arguments to any function go in $a0 and/or $a1
#   make all returned values from functions go in $v0

.data
	array: .word 1 2 3 4 5 6 7 8 9 10
	cout: .asciiz "The contents of the array in reverse order are:\n"
	newline: .asciiz "\n"

.text
printA:
    move $t0, $a0 # array
	move $t1, $a1 # array length
	li $t4, 4 # 4 bytes
	mult $t1, $t4
	mflo $t3
	add $t0, $t0, $t3
	addi $t0, $t0, -4
	for: beq $t1, $zero, end_for
	lw $t2, 0($t0)
	addi $t0, $t0, -4
	li $v0, 1
	move $a0, $t2
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	addi $t1, $t1, -1
	j for

	end_for: jr $ra

main:
	li $v0, 4
	la $a0, cout
	syscall

	la $a0, array
	li $a1, 10

	jal printA

exit:
	li $v0, 10
	syscall

