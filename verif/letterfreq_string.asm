.text
main:   
        addi $a0, $zero, 64	; main string address
	addi $v0, $zero, 0	; counter = 0

getchar:
	addi $a1, $zero, 96	; character address
	
getbytechar:
	lb $s1, 0($a1)

getbytemain:
	lb $s0, 0($a0)		; load main string

compare: 
	beq $s0, $zero, endofstring
	bne $s0, $s1, mismatch
	addi $v0, $v0, 1

mismatch:
	addi $a0, $a0, 1
	j getbytemain

endofstring:
	addi   $t2, $zero, 20
        sw     $v0, 0($t2)	; store the counter value to dcache
	j quit

quit:
        addi   $t2, $zero, 40	; write dead to end the test
        addi   $t3, $zero, 57005
        sw     $t3, 0($t2)
