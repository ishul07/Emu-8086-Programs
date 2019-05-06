data segment
    array1 db 36h,55h,27h,42h
    array2 db 38h,41h,29h,39h
    result db 5 DUP(0)
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax  
    lea si,array1
    lea di,array2
    lea bx,result
    mov cx,5
again:
mov al,[si]
add al,[di]   
mov [bx],al
inc si
inc di 
inc bx
loop again
hlt
code ends
end start


