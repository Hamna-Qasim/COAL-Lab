.model small
.stack 100h
.data
mull DB 10,13,'Answer= $' 
.code      
main proc  
    
    call calculation 
    
    mov ah, 4ch   
    int 21h
main endp  

calculation proc   
    mov ah,1
    int 21h 
    mov bx,ax      
    sub bx,30h

    mov ah,1
    int 21h  
    mov cl,al      
    sub cl,30h 
   
    mov ax,bx   
    mul cl           
   
    mov ah,1
    int 21h
    mov bl,al       
    sub bl,30h
    
    mul bl  
             
    mov cx,ax       
    add cx,30h
    
    mov ax,@data
    mov ds,ax      
    mov dl,mull
    mov dx,offset mull
    mov ah,9
    int 21h  
   
    mov dx,cx      
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    ret
calculation endp  
end main
