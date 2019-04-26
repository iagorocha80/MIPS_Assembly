.data
Vetor: .word -2,-1,0,1,2		#Declaração de um vetor com 5 posições

.text
li $s2,0				#Declaração da variavel 'b'
li $s3,10				#Declaração da variavel 'c'
li $s4,12				#Declaração da variavel 'd'
la $s0,Vetor				#Endereçamento do vetor para o endereço base $s0
li $t0,1				#Indexação da posição [1] do vetor em $t0
add $t0,$t0,$t0				#Position [1]*2
add $t0,$t0,$t0				#Position [1]*2, making a total of [1]*4 
add $t1,$t0,$s0				#Combination of the address
lw $t2, 0($t1)				#Puts the value of Vetor[1] in $t2
add $s2,$s3,$t2				#b=c+Vetor[1]
add $t2,$t2,$s2				#Vetor[1]=Vetor[1]+b
Loop: 					    #Starts the while loop
	slt $t3,$t2,$s4			#compares Vetor[1] with the variable 'd'
	beq $t3,$zero,exit		#Case Vetor[1] was bigger than 'd' branch to exit
	add $t2,$t2,1			#Vetor[1]=Vetor[1]+1			
	j Loop				#Gives continuitivity while, enquanto a condição for valida
 exit: 					#termina o programa