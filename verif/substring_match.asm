.text
main:   
        addi $a0, $zero, 64	; main string address

getsubstring:
	addi $a1, $zero, 96	; sub string address
	
getwordmain:
	lb $s0, 0($a0)		; load main string
	
getwordsub:
	lb $s1, 0($a1)

compare: 
	beq $s1, $zero, matchfound
	beq $s0, $zero, matchnotfound
	bne $s0, $s1, mismatch
	addi $a1, $a1, 1
	addi $a0, $a0, 1
	j getwordmain

mismatch:
	addi $a0, $a0, 1
	j getsubstring

matchfound:
	addi   $t2, $zero, 20
        addi   $t3, $zero, 2766
        sw     $t3, 0($t2)
	j quit

matchnotfound:
	addi   $t2, $zero, 20
        addi   $t3, $zero, 2989
        sw     $t3, 0($t2)
	j quit


        
quit:
        addi   $t2, $zero, 40
        addi   $t3, $zero, 57005
        sw     $t3, 0($t2)
