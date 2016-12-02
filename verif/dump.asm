main:	
	

	addi $zero,$zero,2			
	addi $at, $zero,0		    	



	addi $v0,$zero, 0x5555         
	addi $v1,$zero, 0xEEED         
	addi $a0,$zero, 0xCCCC         
	or   $v0,$a0,$v0	     
	
	addi $a1,$zero, 0x3333         
	and $v0,$a1,$v0	     
	
	nor $v0,$v1,$v0           



	addi $a2,$zero, 0x3200    
	ori $a2,$a2, 0x10            
	addi $a3,$zero, 0x00000080    
	sw $a2, 0($a3)	             
	addi $t0,$zero, 0x5600    
	ori $t0, $t0, 0x78           
	sw $t0, 4($a3)		     
	
	lw $t1, 0($a3)		     
	lw $t2, 4($a3)		     
	add $t3,$t1,$t2	     
	addi $t4,$zero, 0x886         
	sub $t3,$t3, $t4	     
		
		

	andi $t4,$t4, 0x00000000			    
	j h1
	addi $t4,$t4,17			
h1:
	addi $t4,$t4,1			  
	addi $t5, $t5, h4			
	addi $zero, $zero, 0			
	addi $zero, $zero, 0
	jr   $t5		        	
	addi $t4,$t4,23			
h4:
	addi $t4,$t4,1			



	add $t6,$zero,$zero		
	beq $t6, $zero, h2
	addi $t6,$t6,7		     	
h2:
	addi $t6,$t6,1			
	addi $t7,$t6,-2			
	addi $s0,$zero,-1		        
	addi $zero, $zero, 0		
	addi $zero, $zero, 0	
	bne $t7, $s0, h3
	addi $t7,$t7,-10		    	
h3:
	addi $s0,$t7,9		    	


	add $s1,$zero,$zero		
	addi $s2,$zero,-10			
	addi $s3,$zero,15		    	
	slt $s4,$s2,$s3			
	add $s1,$s1,$s4			
	slti $s5,$s2,-5			
	add $s5,$s5,$s1			
