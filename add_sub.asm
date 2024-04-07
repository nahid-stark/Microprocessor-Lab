.MODEL SMALL
.STACK 100H
.DATA
    numberOne DB '(Input) Enter First Number: ', '$'
    numberTwo DB '(Input) Enter Second Number: ', '$'
    resultAdd DB '(Output) Addition of the numbers: ', '$'
    resultSub DB '(Output) Subtraction of the numbers: ', '$'
.CODE
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 09h
    MOV DX, OFFSET numberOne
    INT 21H
    MOV AH, 1
    INT 21h
    MOV BL, AL  
    MOV AH, 2 
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH 
    INT 21H
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 09h
    MOV DX, OFFSET numberTwo
    INT 21H   
    MOV AH, 1
    INT 21H
    MOV CL, AL    
    MOV AH, 2    
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH 
    INT 21H
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 09h
    MOV DX, OFFSET resultAdd
    INT 21H
    MOV AH, 2
    SUB BL, '0'
    SUB CL, '0'
    ADD BL, CL
    MOV DL, BL
    ADD DL, '0'
    SUB BL, CL
    INT 21H   
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH 
    INT 21H
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 09h
    MOV DX, OFFSET resultSub
    INT 21H
    MOV AH, 2
    SUB BL, CL
    MOV DL, BL
    ADD DL, '0'
    INT 21H   
    MOV AH, 4CH
    INT 21H
MAIN ENDP
    END MAIN
