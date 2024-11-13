.model small
.stack 100h
.data
.code
main proc 
    mov cx,5
    rows: 
    push cx
    mov cx,5
    columns:
    mov dl,'1'
    mov ah,2
    int 21h
    loop columns
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h  
    inc bx
    pop cx
    loop rows
    
    mov ah, 4ch
    int 21h
    main endp
end main








