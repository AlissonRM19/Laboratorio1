.section .data
array:
	.word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
y:
	.word 5

.section .text

.global _start
_start:
	
	ldr r0, =array
	ldr r1, =y
	mov r2, #0
	ldr r3, [r1]
	
for:
	cmp r2, #10
	bge end_for
	
	ldr r4, [r0, r2, LSL #2]
	cmp r4, r3
	blt else
	
	mul r4, r4, r3
	str r4, [r0, r2, LSL #2]
	b continue
	
else:
	add r4, r4, r3
	str r4, [r0, r2, LSL #2]

continue:
	add r2, r2, #1
	b for
	
end_for:
	ldr r1, [r0, #0]
	ldr r2, [r0, #4]
	ldr r3, [r0, #8]
	ldr r4, [r0, #12]
	ldr r5, [r0, #16]
	ldr r6, [r0, #20]
	ldr r7, [r0, #24]
	ldr r8, [r0, #28]
	ldr r9, [r0, #32]
	ldr r10, [r0, #36]