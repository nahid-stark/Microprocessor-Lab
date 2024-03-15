.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    MOV AH, 2 ;Display Character
    MOV CX, 26 ; this is for end loop while 26 characters are printed
    MOV DL, 90 ; DL has ASCII code of 'Z' character
PRINT_LOOP:  ; here
    INT 21H
    DEC DL
    DEC CX
    JNZ PRINT_LOOP ; Jump if CX not equal to 0(Zero). jump here to line no. 9
    
    ;Dos exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
    END MAIN
