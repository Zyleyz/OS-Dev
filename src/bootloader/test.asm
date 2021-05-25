    mov ah, 0x0e ; int 10/ah = 0eh 
    
    ; First attemp
    mov al, the_secret
    int 0x10
    
    ; Second attemp
    mov al, [the_secret]
    int 0x10
    
    ; Third attemp
    mov bx, the_secret
    add bx, 0x7c00
    mov al, [bx]
    int 0x10
    
    ; Fourth attemp
    mov al, [0x7c1e]
    int 0x10
    
    jmp $

the_secret:
    db "X"
    
