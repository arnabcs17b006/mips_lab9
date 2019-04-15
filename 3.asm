.data
	a1: .double 1.1, 2.2
	a2: .double 3.3, 4.4
	b1: .double 5.5, 5.6
	b2: .double 7.7, 8.8
	c1: .double 0.0, 0.0
	c2: .double 0.0, 0.0
.text

main: 	
	la $s0,a1
	la $s1,a2
	la $s2,b1
	la $s3,b2
	la $s4,c1
	la $s5,c2
	li $s6,2
	li $t0,2
	li $t1,2
	jal L1

	li $v0,10
	syscall
  
L1:
	beq $t0,$zero,L2
	l.d $f0,($s0)
	l.d $f1,($s2)
	add.d $f2,$f0,$f1
	s.d $f2,($s4)
	addi $s4,$s4,4
	addi $s0,$s0,4
	addi $s2,$s2,4
	addi $t0,$t0,-1
	j L1
L2: 
	beq $t1,$0,E
	l.d $f0,($s1)
	l.d $f1,($s3)
	add.d $f2,$f0,$f1
	s.d $f2,($s5)
	addi $s5,$s5,4
	addi $s1,$s1,4
	addi $s3,$s3,4
	addi $t1,$t1,-1
	j L2
E:
	j $ra
