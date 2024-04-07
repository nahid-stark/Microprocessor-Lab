.MODEL SMALL
.STACK 100H
.DATA
    lineOne DB '(Input) Enter a character: ', '$'
    lineTwo DB '(Input) Enter another character: ', '$'
    result DB '(Output) First one is: ', '$'
.CODE
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 09h
    MOV DX, OFFSET lineOne
    INT 21H
    MOV AH, 01h        
    INT 21H
    SUB AL, 30h        
    MOV BL, AL         
    MOV AH, 02h        
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH 
    INT 21H

    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 09h
    MOV DX, OFFSET lineTwo
    INT 21H   
    MOV AH, 01h        
    INT 21H
    SUB AL, 30h        
    MOV CL, AL        
    MOV AH, 02h       
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
    JL LESSER        
    MOV BL, CL         
    JMP DONE           
LESSER:
    MOV BL, BL        
DONE:
    ADD BL, 30h        
    MOV AH, 02h
    MOV DL, BL
    INT 21h 
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
