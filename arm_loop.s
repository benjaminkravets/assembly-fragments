.global main
.func main

main:
	mov r8, #5
	push {lr}
	ldr r0, =format_specifier0
	bl printf
	begin_loop0:
	mov r7, #15
		begin_loop:
		mov r1, r7
		ldr r0, =format_specifier
		bl printf
		subs r7, r7, #1
		cmp r7, #0
		bne begin_loop
	mov r1, r8
	ldr r0, =format_specifier0
	bl printf
	subs r8, r8, #1
	cmp r8, #1
	
	bne begin_loop0
	pop {pc}
exit:
	mov pc, lr
.data
format_specifier:
	.asciz "%x "
format_specifier0:
	.ascii "\n "