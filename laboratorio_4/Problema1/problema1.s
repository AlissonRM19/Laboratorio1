.section .data
array:
	.word 73, 23, 53, 83, 55, 91, 34, 40, 75, 99
y:
	.word 50

.section .text

.global _start
_start:
	
	ldr r0, =array
	ldr r1, =y
	ldr r2, [r1]
	mov r3, #0
	
for:
	cmp r4, #10
	bge end_for
	
	add r3, r3, #1
	b for
end_for: