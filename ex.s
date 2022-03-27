	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"ex.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Enter x:\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"true\000"
	.align	2
.LC3:
	.ascii	"false\000"
	.text
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r0, .L8
	bl	puts
	sub	r3, fp, #8
	mov	r1, r3
	ldr	r0, .L8+4
	bl	__isoc99_scanf
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	beq	.L6
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L7
	b	.L3
.L6:
	nop
.L3:
	ldr	r0, .L8+8
	bl	puts
	b	.L4
.L7:
	nop
.L4:
	ldr	r0, .L8+12
	bl	puts
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L9:
	.align	2
.L8:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
	.section	.note.GNU-stack,"",%progbits
