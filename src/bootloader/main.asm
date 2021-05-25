[org 0x7c00]

mov bp, 0x7c00
mov sp, bp

mov bx, Message
call PrintString

jmp $

PrintString:
    mov ah,0x0e
    .Loop:
    cmp [bx], byte 0
    je .Exit
        mov al, [bx]
        int 0x10
        inc bx
        jmp .Loop
    .Exit:
    ret

Message:
    db "hello world", 0

; Padding and magic number for boot

times 510 - ($ - $$) db 0
dw 0xaa55 ; Magic number 
