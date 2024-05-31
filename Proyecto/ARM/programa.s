.data
.align 4
texto:          .asciz  "elefante"      @ Palabra de entrada predefinida
texto_mod:      .space  100             @ Espacio para almacenar la cadena modificada
vocales:        .asciz  "aeiouAEIOU"    @ Tabla de vocales
simbolo:        .asciz  "@"             @ Símbolo de entrada para reemplazar vocales
.align 4
num_vocales:    .word   4               @ Cantidad deseada de vocales

.text
.global _start

_start:
    LDR r0, =texto             @ Cargar la dirección de inicio del texto en r0
    LDR r1, =texto_mod         @ Cargar la dirección de inicio del texto modificado en r1
    LDR r2, =vocales           @ Cargar la dirección de la lista de vocales en r2
    LDR r4, =num_vocales       @ Cargar la dirección de la cantidad de vocales en r4
    LDR r5, [r4]               @ Cargar el número de vocales deseadas en r5
    MOV r6, #0                 @ Inicializar el contador de vocales en r6
    LDR r3, =simbolo           @ Cargar la dirección del símbolo
    LDRB r3, [r3]              @ Cargar el símbolo '@' en r3

loop_texto:
    LDRB r7, [r0], #1          @ Cargar el byte en la dirección apuntada por r0, luego incrementar r0
    CMP r7, #0                 @ Comparar r7 con 0 (fin del texto)
    BEQ verificar_vocales      @ Si r7 es 0, saltar a verificar_vocales

    @ Resetear r8 para usarlo en el loop de vocales
    LDR r8, =vocales           @ Cargar la dirección de la lista de vocales en r8

loop_vocales:
    LDRB r9, [r8], #1          @ Cargar el byte de la lista de vocales en r9
    CMP r9, #0                 @ Comparar r9 con 0 (fin de la lista de vocales)
    BEQ not_vowel              @ Si r9 es 0, saltar a not_vowel

    CMP r7, r9                 @ Comparar r7 con r9 (vocal actual)
    BEQ es_vocal               @ Si r7 es igual a r9, saltar a es_vocal

    B loop_vocales             @ Repetir para la siguiente vocal

not_vowel:
    STRB r7, [r1], #1          @ Almacenar el byte original en el nuevo texto y luego incrementar r1
    B loop_texto               @ Continuar con el próximo carácter del texto

es_vocal:
    ADD r6, r6, #1             @ Incrementar el contador de vocales
    STRB r3, [r1], #1          @ Almacenar '@' en el texto modificado y luego incrementar r1
    B loop_texto               @ Continuar con el próximo carácter del texto

verificar_vocales:
    CMP r6, r5                 @ Comparar el contador de vocales con el número deseado
    BEQ fin_programa           @ Si r6 es igual a r5, saltar a fin_programa

restaurar_texto:
    LDR r0, =texto             @ Cargar la dirección de inicio del texto original en r0
    LDR r1, =texto_mod         @ Cargar la dirección de inicio del texto modificado en r1
    MOV r6, #0                 @ Resetear el contador de vocales

loop_restaurar:
    LDRB r7, [r0], #1          @ Cargar el byte en la dirección apuntada por r0, luego incrementar r0
    CMP r7, #0                 @ Comparar r7 con 0 (fin del texto)
    STRB r7, [r1], #1          @ Almacenar el byte en el texto modificado y luego incrementar r1
    BNE loop_restaurar         @ Si no es el fin del texto, repetir

fin_programa:
    MOV r7, #1                 @ Llamar a la syscall de salida del programa
    MOV r0, #0                 @ Código de salida
    SWI 0                      @ Realizar la llamada al sistema

@==============================================================================
@Comprobado: 
@- Identifica y remplaza vocales, detecta la cantidad de vocales indicada. 

@No comprobado:
@- No se ha comprobado que funcione cuando hay espacios o una cadena larga. 

@Por solucionar:
@- Error en la "rutina fin_program".
@==============================================================================



	