; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; 	a macho hello world on silicon		;
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
						;
.align 2 					; this alignment seems to be 
						; a common pattern so i'm 
						; following it
						;
.data						; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	msg: 	.ascii	"hello world\n"		; + hello world string :>
	len = . - msg				; + string length
						; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.text						;
						; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.globl _start					; tell where to start
						; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
_start:						;
	mov	x0, #1				; + stdout
	adrp	x1, msg@PAGE			; + this is a way we can address
						;   our string, not using 
						;   absolute addressing
	ldr	x2, =len			; + here we use absolute
						;   addressing so that we can
						;   access our string length,
						;   however, we need as flag
						;   `-mpic` to do so.
	mov	x16, #4				; + syswrite
	svc 	#0x80				;
						; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	mov	x0, #0				; + exit code
	mov 	x16, #1				; + sys exit
	svc	#0x80				; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
