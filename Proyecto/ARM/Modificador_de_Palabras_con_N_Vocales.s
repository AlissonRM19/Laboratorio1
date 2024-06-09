.text
.global inicio

inicio:
	
	ldr r1, =mensaje         		// Cargar la dirección de inicio de la cadena **(direccion especial: primer caracter) -> mov r1, #0x000000ec
	ldr r3, =cantidad				// Carga cantidad de vocales **(direccion especial: cantidad de vocales a buscar) -> mov r0, #0x000000f0
	ldr r6, =fin_mensaje     		// ! Cargar la dirección del final de la cadena **(direccion especial: final de la cadena) -> mov r6, #0x000000f4 [#0x00000169] 
	
	bl contar_y_reemplazar_vocales  // Llamar a la rutina para contar y reemplazar vocales

contar_y_reemplazar_vocales:
	mov r4, #0               	// Contador de vocales en una palabra (cantidad de vocales antes de un " ", ", ", ". ")
    mov r5, #0               	// Contador de caracteres en una palabra (cantidad de caracteres antes de un " ", ", ", ". ")

inicio_bucle:
    cmp r1, r6               
    bge fin                  	// Si r1 >= r6, saltar a fin -> blt fin
	ldrb r0, [r3]
    ldrb r7, [r1]            	// Cargar el byte actual en r7, r7 un reg temporal
	
    cmp r7, #0x20            	// Compara con espacio
    beq verificar_fin_palabra
    cmp r7, #0x2C             	// Compara con coma
    beq verificar_fin_palabra
    cmp r7, #0x2E             	// Compara con punto
    beq verificar_fin_palabra

    cmp r7, #0x41             // Comparar con 'A'
    beq vocal_encontrada
    cmp r7, #0x45             // Comparar con 'E
    beq vocal_encontrada
    cmp r7, #0x49             // Comparar con 'I
    beq vocal_encontrada 
    cmp r7, #0x4F             // Comparar con 'O
    beq vocal_encontrada
    cmp r7, #0x55             // Comparar con 'U
    beq vocal_encontrada

    // Se mueve alguiente caracter
    add r1, r1, #1           // Incrementar el puntero de mensaje
    add r5, r5, #1           // Incrementar el contador de caracteres de la palabra
    b inicio_bucle           // Repetir el bucle

verificar_fin_palabra:
    cmp r4, r0               // Verificar si la palabra tiene exactamente 3 vocales
    bne reiniciar_contadores // Si no tiene X vocales, reiniciar los contadores

    sub r9, r1, r5           // Calcula el inicio de la palabra restando el número de caracteres
							 // Esto se hace luego de comprobar la cantidad de vocales encontradas para su posterior cambio

bucle_reemplazo_vocales:
    ldrb r7, [r9]            // Cargar el byte actual de la palabra en r7
    cmp r7, #0x41            // Comparar con 'A'
    beq reemplazar_vocal
    cmp r7, #0x45            // Comparar con 'E'
    beq reemplazar_vocal 
    cmp r7, #0x49            // Comparar con 'I'
    beq reemplazar_vocal
    cmp r7, #0x4F            // Comparar con 'O'
    beq reemplazar_vocal
    cmp r7, #0x55            // Comparar con 'U'
    beq reemplazar_vocal

    b siguiente_caracter_en_palabra // Si no es vocal, ir al siguiente carácter en la palabra

reemplazar_vocal:
    mov r7, #0x26            // Cargar '&' el caracter elegido
    strb r7, [r9]            // Reemplazar el carácter actual con '&'

siguiente_caracter_en_palabra:
    add r9, r9, #1           // Mover al siguiente carácter de la palabra
    sub r5, r5, #1           // Decrementar el contador de caracteres
    cmp r5, #0               // Verificar si hay más caracteres en la palabra
	
    bne bucle_reemplazo_vocales // Si quedan caracteres, continuar el bucle
        
reiniciar_contadores:
    mov r4, #0               // Reiniciar el contador de vocales
    mov r5, #0               // Reiniciar el contador de caracteres
    add r1, r1, #1           // Mover al siguiente carácter del mensaje
	
    b inicio_bucle           // Volver al inicio del bucle

vocal_encontrada:
    add r4, r4, #1           // Incrementar el contador de vocales
    add r1, r1, #1           // Mover al siguiente carácter del mensaje
    add r5, r5, #1           // Incrementar el contador de caracteres
    b inicio_bucle           // Volver al inicio del bucle

fin:
    b fin                    // Bucle infinito al final (termina la ejecución)

.data
mensaje:
    .ascii "ESTA ES UNA CADENA CON VARIAS PALABRAS, ALGUNAS TIENE DOS VOCALES. VAMOS A CAMBIAR LAS VOCALES DE ESAS PALABRAS. "

cantidad:
	.word 3

fin_mensaje: