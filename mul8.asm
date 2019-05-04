data segment
    num1 db 23h
    num2 db 10h
    result dw 0000h
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax
    xor ax,ax
    mov al,num1
    mov bl,num2
    mul bl
    mov result,ax
    mov ah,4ch
    int 21h
    code ends
end start