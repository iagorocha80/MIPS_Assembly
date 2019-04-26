.text
li $s2,120		#Declaração do valor da variavel 'b'
li $s3,100		#Declaração do valor da variavel 'c'
li $s4,50		#Declaração do valor da variavel 'd'
li $s5,170		#Declaração do valor da variavel 'e'
sub $t0,$s3,$s4		#$t0= (c-d)
add $t1,$s2,$t0		#$t1=[b+(c-d)]
sub $s1,$t1,$s5		#$s1=[b+(c-d)]-e
exit:
