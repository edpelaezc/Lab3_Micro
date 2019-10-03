.model small


.stack
.data
  
;declarando variables globales
numero1 db 0
numero2 db 0

suma db 0
resta db 0
multiplicacion db 0
division db 0
modulo db 0

cadena1 db  "Ingrese el primer numero= $";ingrese n1
cadena2 db  "Ingrese el segundo numero= $";ingrese n2

;mensaje para mostrar los resultados
 
msjnS db  "La suma es= $"
msjnR db  "La resta= $"
msjnM db  "La Multiplicacion es= $"
msjnD db  "La division es = $"
msjnMod db  "El modulo es = $"

.code
programa: 
    
    ;direccionamiento del procedimiento
    mov ax, @data
    mov ds,ax
    
    ;solicitar del teclado numero 1
    
    mov ah, 09
    lea dx, cadena1
    int 21h
    mov ah, 01
    int 21h
    sub al, 30h
    mov numero1,al
    
    ;solicitar del teclado numero 2
    
    mov ah, 09
    lea dx, cadena2
    int 21h
    mov ah, 01
    int 21h
    sub al, 30h
    mov numero2,al
    
    ;operaciones aritmeticas
                  
    ;SUMA             
    mov al,numero1
    add al,numero2
    mov suma,al  
    
    ;RESTA
    mov al,numero1
    sub al,numero2
    mov resta,al
    
    ;MULTIPLICACION
    mov al,numero1
    mul numero2
    mov multiplicacion,al
    
    ;DIVISION
    mov al,numero1
    div numero2
    mov division,al
    
    ;MODULO
    mov al, numero1
    div numero2
    mov modulo,ah 
       
    ;Mostrar los mensajes de los resultados 
    
    ;mostrando la suma
    mov ah,09
    lea dx,msjnS
    int 21h
    mov dl,suma
    add dl,30h 
    mov ah,02
    int 21h  
    
    ;mostrando la resta
    mov ah,09
    lea dx,msjnR
    int 21h
    mov dl,resta
    add dl,30h 
    mov ah,02
    int 21h
    
    ;mostrando la multiplicacion
    mov ah,09
    lea dx,msjnM
    int 21h
    mov dl,multiplicacion
    add dl,30h 
    mov ah,02
    int 21h
    
    ;mostrando la division
    mov ah,09
    lea dx,msjnD
    int 21h
    mov dl,division
    add dl,30h 
    mov ah,02
    int 21h
                
    ;mostrando el modulo     
    mov ah,09
    lea dx,msjnMod
    int 21h
    mov dl,modulo
    add dl,30h 
    mov ah,02
    int 21h
  
    ;cierre del programa
    mov ah,4ch
    int 21h
    
    
end programa
    
    
  