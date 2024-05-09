.global fibonacci

fibonacci:
	
	mov r0, #10 @numero X
	
	cmp r0, #0 @ Caso default con X = 0
	ble exit
	
	cmp r0, #1 @ Caso default con X = 1
	beq default
	
	mov r2, #0 @prev_1
	mov r3, #1 @prev_2
	
loop:
	
	add r5, r2, r3 @ Calcula la suma para determinar el Fibonacci
	
	mov r2, r3 @ Actualiza el valor de r2 con el valor previo de r3
	mov r3, r5 @ Actualiza el valor de r3 con el resultado actual de la suma de Fibonacci
	
	add r10, r10, #1 @ Contador para determinar cuando detenerse
	
	cmp r10, r0 @ Se realiza la comparación entre los registros para determinar si debe realizar el "branch no equal"
	bne loop
	
	mov r12, r2 @ Almancena el ultimo resultado de la suma de Fibonacci en r12
	
	bl exit @ Salto al final de la ejecucion de las instrucciones

default:
	mov r12, #1 @ Caso default
	bl exit

exit:
	.end
	
	