.model small 
.stack 
.data
    cadena1 db  "Ingrese el primer numero= $";ingrese n1
    cadena2 db  "Ingrese el segundo numero= $";ingrese n2
    cadenaS DB 'RESULTADO SUMA: $'; $ significa el final de la cadena 
    cadenaR DB 'RESULTADO DIFERENCIA: $'; 
    cadenaM DB 'RESULTADO MULTIPLICACION: $'; 
    cadenaC DB 'COCIENTE: $'; 
    cadenaD DB 'RESIDUO: $'; 
    num1 db 34h
    num2 db 32h   
    aux db 10 
    unidad db ?
    decena db ?
    cociente db ? 
    residuo db ? 
.code 
programa: 
    MOV AX, @DATA
    MOV DS, AX
    
    XOR AX, AX    

    ;solicitar del teclado numero 1
    
    mov ah, 09
    lea dx, cadena1
    int 21h
    mov ah, 01
    int 21h
    ;sub al, 30h
    mov num1,al
    
        ; imprimir un salto de linea antes de mostrar un resultado
    MOV DL, 10
    MOV AH, 02
    INT 21h
    MOV DL, 13
    INT 21H
    XOR AX, AX
    
;solicitar del teclado numero 2
    
    mov ah, 09
    lea dx, cadena2
    int 21h
    mov ah, 01
    int 21h
    ;sub al, 30h
    mov num2,al
    
        ; imprimir un salto de linea antes de mostrar un resultado
    MOV DL, 10
    MOV AH, 02
    INT 21h
    MOV DL, 13
    INT 21H
    XOR AX, AX
        

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;IMPRIMIR CADENA
    MOV DX, OFFSET cadenaS 
    MOV AH, 09h 
    INT 21h 
    
    XOR AX, AX
    
    ;SUMA
    MOV AL, num1
    SUB AL, 30H
    MOV BL, num2 
    SUB AL, 30H
    ADD AL, BL
    
    ;IMPRIMIR SUMA
    ;sub AL, 30h 
    ;MOV DL, AL
        
    DIV aux
    MOV unidad, AL
    MOV decena, AH
    
    MOV DL, unidad
    ADD DL, 30H
    MOV AH, 02
    INT 21H
    
    MOV DL, decena
    ADD DL, 30H
    MOV AH, 02
    INT 21H
    
    XOR AX, AX 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; imprimir un salto de linea antes de mostrar un resultado
    MOV DL, 10
    MOV AH, 02
    INT 21h
    MOV DL, 13
    INT 21H
    XOR AX, AX 
    
    ;IMPRIMIR CADENA
    MOV DX, OFFSET cadenaR
    MOV AH, 09h 
    INT 21h 
    
    XOR AX, AX
    
    ;RESTA
    MOV AL, num1 
    SUB AL, num2 
    
    ;IMPRIMIR RESTA
    ADD AL, 30H
    MOV DL, AL 
    MOV AH, 02
    INT 21H
    
    XOR AX, AX 
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; imprimir un salto de linea antes de mostrar un resultado
    MOV DL, 10
    MOV AH, 02
    INT 21h
    MOV DL, 13
    INT 21H
    XOR AX, AX 
    
    ;IMPRIMIR CADENA
    MOV DX, OFFSET cadenaM
    MOV AH, 09h 
    INT 21h 
    
    XOR AX, AX
    
    ;MULTIPLICACION 
    MOV AL, num1 
    SUB AL, 30H
    MOV BL, num2
    SUB BL, 30H
    MUL BL    
    ;IMPRIMIR MULTIPLICACION 
    DIV aux
    MOV unidad, AL
    MOV decena, AH
    
    MOV DL, unidad
    ADD DL, 30H
    MOV AH, 02
    INT 21H
    
    MOV DL, decena
    ADD DL, 30H
    MOV AH, 02
    INT 21H
    
    XOR AX, AX
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; imprimir un salto de linea antes de mostrar un resultado
    MOV DL, 10
    MOV AH, 02
    INT 21h
    MOV DL, 13
    INT 21H
    XOR AX, AX 
    
    ;IMPRIMIR CADENA
    MOV DX, OFFSET cadenaC
    MOV AH, 09h 
    INT 21h 
    
    XOR AX, AX
    
    ;DIVISION
    MOV AL, num1 
    SUB AL, 30H
    MOV BL, num2
    SUB BL, 30H
    DIV BL 
    MOV cociente, AL
    MOV residuo, AH
    
    ;IMPRIMIR COCIENTE
    MOV DL, cociente 
    ADD DL, 30H 
    MOV AH, 02
    INT 21H 
    
    XOR AX, AX 
    
    ; imprimir un salto de linea antes de mostrar un resultado
    MOV DL, 10
    MOV AH, 02
    INT 21h
    MOV DL, 13
    INT 21H
    XOR AX, AX 
    
    ;IMPRIMIR CADENA
    MOV DX, OFFSET cadenaD
    MOV AH, 09h 
    INT 21h 
    
    XOR AX, AX
    
    ;IMPRIMIR RESIDUO
    MOV DL, residuo 
    ADD DL, 30H 
    MOV AH, 02
    INT 21H 
    
    XOR AX, AX
    
    
    
    
    ;finalizar el programa
    MOV AH, 4CH 
    INT 21H
END programa
    
    