data segment
    num1 dw 2001h
    num2 dw 1003h
    rem dw 0000h
    quo dw 0000h
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax
    xor ax,ax 
    xor dx,dx
    mov ax,num1
    mov bx,num2
    div bx 
    mov quo,ax
    mov rem,dx
    hlt
    code ends
end start

    