data segment
    num1 db '9'
    num2 db '5'
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
    and al,0fh
    and bl,0fh
    mul bl
    aam
    mov result,ax
    hlt
    code ends
end start




