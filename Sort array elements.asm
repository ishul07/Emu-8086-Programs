data segment
    array db 07h,08h,05h,02h
    count db 04h
    data ends
assume cs:code,ds:data
code segment
    start:
    mov ax,data
    mov ds,ax
    mov cx,count-1
again:
mov si,offset array
mov dl,count
again1:
mov al,[si]
cmp al,[si+1]
jl back
xchg [si+1],al
xchg [si],al
back:
inc si
loop again1
dec cx
jnz again
mov ah,4ch
int 21h
code ends
end start
