.data
	m: .float 0.1
	n: .float 4.0
  o: .double 3.2
  p: .double 1.6
.text
main:
  l.d $f0,p
	l.d $f2,o
	add.d $f4,$f2,$f0
	sub.d $f6,$f2,$f0
	mul.d $f8,$f2,$f0
	div.d $f10,$f2,$f0
	l.s $f0,n
	l.s $f2,m
	add.s $f3,$f2,$f0
	sub.s $f4,$f2,$f0
	mul.s $f5,$f2,$f0
	div.s $f6,$f2,$f0
 
  li $v0,10
	syscall

	
