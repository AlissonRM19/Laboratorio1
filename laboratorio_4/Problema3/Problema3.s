.global _start
_start:

V: .word 10,9,18,23,3,7,6,7,2,1,12,8,3,7,8,3
T: .word 4,5,13,12,1,2,9,14,7,8,5,6,3,2,1,9
J: .space 64 // Esta linea es para recervar el espacio para los 16 numeros enteros (4 bytes cada uno)


	//Definicion de las direcciones base en memoria para las matrices a sumar (V y T) y la matriz resultado J
	ldr r1, =V
	ldr r2, =T
	ldr r3, =J
	
	//Contador para el bucle
	mov r0, #0
//Ciclo
Loop:
//Se compara si el contador es 16, si es igual sale del bucle, sino ignora el branch

	cmp r0,#16

	beq .
	//Se cargan los valores de V y T
	ldr r4, [r1,r0,LSL #2] //(Esto es por que se esta trabajando con 4bytes)
	ldr r5, [r2,r0,LSL #2] //(Esto es por que se esta trabajando con 4bytes)

	// Sumar valores
	add r4,r4,r5

	// Almacenar el resultado obtenido en J
	str r4,[r3,r0,LSL #2]

	//Incremento de el indice
	add r0,r0, #1

	// Repeticion de el ciclo
	B Loop