.text
main:
	addi $a0, $zero, 64	; main string address
	addi $a1, $zero, 96	; copy string address

getbytemain:
	lb $s0, 0($a0)		; load main string

	beq $s0, $zero, quit	; end of string
	sb $s0, 0($a1)		; store each byte
	addi $a0, $a0, 1	; increment address
	addi $a1, $a1, 1	; increment address
	j getbytemain		; loop

quit:
        addi   $t2, $zero, 40	; write dead to end the test
        addi   $t3, $zero, 57005
        sw     $t3, 0($t2)
