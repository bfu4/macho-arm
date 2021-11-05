.align 4

.dword 0xfeedfacf	; macho64 magic
.dword 0x0100000c	; cpu type (arm64)
.dword 0x0		; cpu subtype
.dword 0x00000002	; type: mh_execute
.dword 0x00000002	; ncmds
.dword 0x10		; todo(bfu4): cmd size
.dword 0x01		; flags
