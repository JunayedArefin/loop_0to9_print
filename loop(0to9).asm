.model small
.stack 100h
.data
msg db "Loop Concept(Print 0 to 9) $"

.code
main proc
    mov ax,@data  ;initialize
    mov ds,ax
    
    mov ah,9      ;for print string
    lea dx,msg
    int 21h       
    
    mov cx,10     ;loop will continue to 
    
    mov ah,2
    mov dl,'0'
    
    level1:
    int 21h
    inc dl
    loop level1
    
    
    main endp
end main