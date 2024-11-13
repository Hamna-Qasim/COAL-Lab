.model small
.stack 100h
.data         
first DB 'Hamna$'
second DB 'Qasim$'
.code      
main proc  
    mov ax, @data
    mov ds, ax
    mov dl,first
    mov dx, offset first
    mov ah,9
    int 21h
    
    call space  
    
    mov ax, @data
    mov ds, ax
    mov dl, second
    mov dx, offset second 
    mov ah,9
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp  

space proc
 mov dx, 10
 mov ah,2
 int 21h
 mov dx,13
 mov ah,2
 int 21h
 ret
space endp

end main