data segment
    packed db 65h
    unpacked dw 0000h
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax
    xor ax,ax
    mov al,packed   
    mov dl,al
    and al,0f0h
    mov cl,4
    ror al,cl  
    mov bh,al
    and dl,0fh
    mov bl,dl
    mov unpacked,bx
    hlt
    code ends
end start
    