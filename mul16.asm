data segment
    num1 dw 3a6bh
    num2 dw 8ecdh
    result dw 0000h
    result1 dw 0000h
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax
    xor ax,ax
    mov ax,num1
    mov bx,num2
    mul bx
    mov result,ax
    mov result1,dx
    mov ah,4ch
    int 21h
    code ends
end start