.MODEL SMALL
.STACK 100H
.DATA
    lineOne DB '(Input) Enter First Number: ', '$'
    lineTwo DB '(Input) Enter Second Number: ', '$'
    result DB '(Output) Biggest one is: ', '$'
.CODE
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 09h
    MOV DX, OFFSET lineOne
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
    MOV DX, OFFSET lineTwo
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
    MOV DX, OFFSET result
    INT 21H   
    CMP BL, CL
    JG GREATER
    MOV BL, CL
    GREATER:
    MOV BL, BL
    MOV AH, 2
    MOV DL, BL
    INT 21h 
    MOV AH, 4CH
    INT 21H
MAIN ENDP
    END MAIN
