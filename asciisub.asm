data segment
    num1 db '9'
    num2 db '4'
    res db 00
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax
    xor ax,ax
    mov al,num1
    mov bl,num2
    sub al,bl
    aas
    mov res,al
    mov ah,4ch
    int 21h
    code ends
end start