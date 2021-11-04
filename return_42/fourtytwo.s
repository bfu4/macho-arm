.align 2

.globl _start

_start:
	mov 	x16, #1
	eor	x0, x0, x0
	mov	x0, #42
	svc 	#0x80
