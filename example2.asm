.text
li $s5,1		#Declaração da variavel 'i'
li $s6,3		#Declaração da variavel 'j'
li $s2,0		#Declaração da variavel 'f'
li $s3,23		#Declaração da variavel 'g'
li $s4,167		#Declaração da variavel 'h'
li $s1,1		#Declaração da variavel 'e'
bne $s5,$s6,Else	#Controle de fluxo, se i!=j pula para o else
add $t0,$s3,$s4		#$t0=g+h
add $s2,$s1,$t0		#f=e+g+h
j exit			#Pula para a saida, para evitar a execução do Else
Else: add $s2,$s2,$s4	#Else, f=f+h
exit: 			#Finaliza o programa
