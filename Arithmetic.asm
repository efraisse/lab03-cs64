# Arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:
    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 5
    syscall 
    move $t2, $v0

    sub $t6, $t0, $t1
    sll $t6, $t6, 1
    li $t3, 3
    mult $t2, $t3
    mflo $t4
    add $t5, $t6, $t4
    
    li $v0, 1
    move $a0, $t5
    syscall

exit:
	# Exit
	li $v0, 10
	syscall

