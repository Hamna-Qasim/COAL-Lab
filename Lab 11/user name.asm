.model small
.stack 100h
.data   
.code
main proc 
      
    mov cx,5
    l1: 
    mov ah,1
    int 21h 
    mov bx, ax
    push bx
    loop l1
             
    mov dl,10 
    mov ah,2
    int 21h
    mov dl,13  
    mov ah,2
    int 21h
    
    mov cx, 5
    l2:
    pop bx 
    mov dx, bx
    mov ah,2
    int 21h   
    loop l2
    
    
    mov ah,4ch
    int 21h
    main endp
end main
