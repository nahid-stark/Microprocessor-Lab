.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    MOV AH, 2 ;Display Character
    MOV CX, 256 ;no. of character to display
    MOV DL, 0 ; DL has ASCII code of null character
PRINT_LOOP:
    INT 21H ;Display character
    INC DL ;Increment ASCII code
    DEC CX ;Decrement counter
    JNZ PRINT_LOOP ;Keep looping if CX not equal to 0(zero)
    ;Dos exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
    END MAIN
