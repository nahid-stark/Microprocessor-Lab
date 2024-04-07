.MODEL SMALL
.STACK 100H
.DATA
    inputNumber DB '(Input) Enter a Number: ', '$'
    condition DB '(Output) Number is: ', '$'
    pos DB 'positive', '$' 
    nega DB 'Negative', '$'
    zer DB 'Zero', '$'
.CODE
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 09h
    MOV DX, OFFSET inputNumber
    INT 21H
    MOV AH, 01h
    INT 21h
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
    MOV DX, OFFSET condition
    INT 21H       
    CMP BL, 0
    JL NEGATIVE
    JE ZERO
    JG POSITIVE
NEGATIVE:
    MOV DX, OFFSET nega
    JMP DISPLAY
POSITIVE:
    MOV DX, OFFSET pos
    JMP DISPLAY
ZERO:
    MOV DX, OFFSET zer
DISPLAY:
    MOV AH, 09h
    INT 21H
    MOV AH, 4CH
    INT 21H
MAIN ENDP
    END MAIN
