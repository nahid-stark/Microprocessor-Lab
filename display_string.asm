.MODEL SMALL
.STACK 100H

.DATA
    HelloWorld DB 'Hello, World!', '$'

.CODE
MAIN PROC
    ; Set up segment registers
    MOV AX, @DATA
    MOV DS, AX

    ; Print "Hello, World!" to console
    MOV AH, 09h       ; Function to print string
    MOV DX, OFFSET HelloWorld   ; Load offset address of HelloWorld string
    INT 21h           ; Call DOS interrupt

    ; Exit program
    MOV AH, 4CH       ; DOS function to exit program
    INT 21h           ; Call DOS interrupt

MAIN ENDP
END MAIN
