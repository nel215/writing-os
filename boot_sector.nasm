mov ah, 0x0e ; tty mode
; print hello
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'
int 0x10
mov al, 10
int 0x10
mov al, 13
int 0x10

jmp $ ; infinite loop

; Fill with 510 zeros
times 510-($-$$) db 0
; Magic number
dw 0xaa55
