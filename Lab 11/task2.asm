.model small
.stack 100h
.data   
arr DB 7,6,1,3,6,7,1,3,1,3
.code
main proc 
    mov ax, @data
    mov ds, ax
    mov si, offset arr
      
    mov cx,10
    l1: 
    push [si]
    inc si
    loop l1
            
    mov cx, 10
    l2:
    pop [si]  
    add [si],48
    mov dx, [si]
    mov ah,2
    int 21h   
    loop l2
    
    
    mov ah,4ch
    int 21h
    main endp
end main
