.model small
.stack 100h
.data 
arr DB 49,50,51,52,53 
.code
main proc 
    mov ax, @data  
    mov ds, ax
    mov si, offset arr
    mov cx, 5
    
    loopp:
    mov dl,[si]
    mov ah,2
    int 21h
    
    inc si
    loop loopp
    
    
    mov ah, 4ch
    int 21h
    main endp
end main


