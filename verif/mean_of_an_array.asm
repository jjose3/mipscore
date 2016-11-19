.text
main:   
        addi $a0, $zero, 0 ; base address
        addi   $s0, $zero, 0 ; initializing sum = 0
        lw     $a1, 0($a0)   ; loading number counter
        addi   $t0, $a1, 0   ; copy the counter
loop:
        addi   $a0, $a0, 4   ; increment base address
        lw     $a2, 0($a0)   ; loading each number
        add    $s0, $s0, $a2 ; adding it to sum
        addi   $t0, $t0, -1  ; decrement counter
        bgtz   $t0, loop

        div $s0, $a1
        mflo $v0
	addi $t2 $zero 20
	sw $v0 0($t2)
        j quit

        
quit:
        addi   $t2, $zero, 40
        addi   $t3, $zero, 57005
        sw     $t3, 0($t2)
