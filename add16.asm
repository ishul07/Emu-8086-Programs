data segment
    num1 dw 2345h
    num2 dw 3434h
    result dw 0000h
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax
    mov ax,00h
    mov ax,num1
    mov dx,num2
    add ax,dx
    mov result,ax
    mov ah,4ch
    int 21h
    code ends
end start