# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
    string1: .ascii "Choose an integer number between 0 and 1000:\n"
    string2: .ascii "Hello World!\n"
    string3: .ascii "User chose"
    string4: .ascii ". Truly a wise choice.\n"

#Text Area (i.e. instructions)
.text
main:
    li $v0, 4
    la $a0, string1
    syscall

    li $v0, 5
    move $t0, $v0
    syscall

    li $v0, 4
    la $a0, string2
    syscall

    li $v0, 4
    la $a0, string3
    syscall

    li $v0, 1
    syscall
    move $a0, $t0
    
    li $v0, 4
    la $a0, string4
    syscall

exit:
	# Exit
	li $v0, 10
	syscall

