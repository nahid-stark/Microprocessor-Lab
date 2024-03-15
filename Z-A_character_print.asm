.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    MOV AH, 2 ;Display Character
    MOV CX, 26 ;no. of character to display
    MOV DL, 90 ; DL has ASCII code of null character
PRINT_LOOP:
    INT 21H
    DEC DL
    DEC CX
    JNZ PRINT_LOOP
    
    ;Dos exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
    END MAIN
