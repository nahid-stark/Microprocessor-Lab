.MODEL SMALL
.STACK 100H

.DATA
    HelloWorld DB 'Hello, World!', '$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 09h       
    MOV DX, OFFSET HelloWorld   
    INT 21h          

    
    MOV AH, 4CH       
    INT 21h           

MAIN ENDP
END MAIN
