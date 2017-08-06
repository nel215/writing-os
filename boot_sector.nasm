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

; print X
;mov al, the_secret
;int 0x10
;
;mov al, [the_secret]
;int 0x10

mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 0x10

mov al, [0x7c2e]
int 0x10

jmp $ ; infinite loop

the_secret:
    db "X"

; Fill with 510 zeros
times 510-($-$$) db 0
; Magic number
dw 0xaa55
