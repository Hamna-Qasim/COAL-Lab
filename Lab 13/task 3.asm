.model small
.stack 100h
.data
.code
main proc 
    mov bx,5
    mov cx,5
    rows: 
    push cx
    mov cx,bx
    columns:
    mov dl,'*'
    mov ah,2
    int 21h
    loop columns
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h  
    dec bx
    pop cx
    loop rows
    
    mov ah, 4ch
    int 21h
    main endp
end main



