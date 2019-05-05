data segment
    ip1 db 07d
    ip2 db 06d
    ip3 db 09d
    quo db 00h
    rem db 00h
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax
    xor ax,ax  
    mov al,ip1
    mov ah,ip2
    aad
    mov bl,ip3
    div bl
    mov quo,al
    mov rem,ah
    hlt
    code ends
end start



