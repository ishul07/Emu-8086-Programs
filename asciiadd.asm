data segment
    num1 db '6'
    num2 db '9'
    result db 00
    result1 db 00
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax
    xor ax,ax 
    mov al,num1
    mov bl,num2 
    add al,bl
    aaa 
    mov result,al
    mov result1,ah
    hlt
    code ends
end start
