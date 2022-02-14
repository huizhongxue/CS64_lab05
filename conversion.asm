# conversion.asm program
# Don't forget to:
#   make all arguments to any function go in $a0 and/or $a1
#   make all returned values from functions go in $v0

.text
conv:
    li $t0, 0 # i = 0
    li $t1, 0 # sum = 0
    li $t2, 7 # max index
    move $t3, $a0 # x
    move $t4, $a1 # y
    li $t5, 8 # multiply x by 8
    li $t6, 2 # x >= 2
    for: bgt $t0, $t2, end_for
    mult $t3, $t5
    mflo $t7
    sub $t1, $t1, $t7
    add $t1, $t1, $t4
    bge $t3, $t6, if
    addi $t3, $t3, 1
    addi $t0, $t0, 1
    j for
    if: addi $t4, $t4, -1
    addi $t3, $t3, 1
    addi $t0, $t0, 1
    j for
    end_for: move $v0, $t1
    jr $ra

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