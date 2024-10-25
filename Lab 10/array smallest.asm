.model small
.stack 100h
.data
arr db 49,50,51,52,53,54,48
.code
main proc
    
    mov ax,@data
    mov ds,ax
    mov si,offset arr
    
    mov cx,7
    mov bl,[si]
    
    l1:
    cmp [si],bl
    jle small
    compare:
    inc si
    loop l1
    
    mov dl,bl
    mov ah,2
    int 21h
    
    small:
    mov bl,[si]
    jmp compare
    
    mov ah,4ch
    int 21h
    main endp
end main