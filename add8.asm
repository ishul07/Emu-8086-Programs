data segment
    num1 db 05h
    num2 db 04h
    result db 00h
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax
    mov ax,00h
    mov al,num1
    mov bl,num2
    add al,bl
    mov result,al
    mov ah,4ch
    int 21h
    code ends
end start

