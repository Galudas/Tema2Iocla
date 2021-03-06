%include "io.inc"

%define NUM 5

section .text
global CMAIN
CMAIN:
    mov ebp, esp

    ; TODO 1: replace every push by an equivalent sequence of commands
    mov ecx, NUM
push_nums:
    push ecx
    loop push_nums

    push 0
    push "mere"
    push "are "
    push "Ana "

    PRINT_STRING [esp]
    NEWLINE

    ; TODO 2: print the stack in "address: value" format in the range of [ESP:EBP]

    ; TODO 3: print the string

    ; restore the previous value of the EBP (Base Pointer)
    mov esp, ebp

    ; exit without errors
    xor eax, eax
    ret
