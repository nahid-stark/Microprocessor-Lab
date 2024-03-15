.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    MOV AH, 2 ;Display Character
    MOV CX, 26 ;this is for end loop while 26 characters are printed
    MOV DL, 65 ; DL has ASCII code of 'A' character
PRINT_LOOP:
    INT 21H
    INC DL
    DEC CX
    JNZ PRINT_LOOP
    
    ;Dos exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
    END MAIN
