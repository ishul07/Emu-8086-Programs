data segment
    num1 db 07h
    num2 db 02h
    rem db 00h
    quo db 00h
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax
    xor ax,ax
    mov al,num1
    mov bl,num2
    div bl
    mov rem,ah
    mov quo,al
    mov ah,4ch
    int 21h
    code ends
end start