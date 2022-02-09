# conversion.asm program
# Don't forget to:
#   make all arguments to any function go in $a0 and/or $a1
#   make all returned values from functions go in $v0

.text
conv:
    li $t0, 0
    li $t1, 7
    li $t2, 0
    mult $a0, 8
    mflo $t3
    sub $t4, $a1, $t3 # $t3 = -8*$a0 + $a1

    loop:
        beq $t0, $t1, loop
        add $t2, $t2, $t4
        addi $t0, 1

main:
	li $a0, 5
    li $a1, 7

    jal conv

	move $a0, $v0
    li $v0, 1
    syscall

exit:
	li $v0, 10
    syscall