section .data
    prompt db 'Enter a number: ', 0
    positive_msg db 'POSITIVE', 0
    negative_msg db 'NEGATIVE', 0
    zero_msg db 'ZERO', 0
    
section .bss
    input resd 1

section .text
    global _start

_start:
    ; Print prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 18
    int 0x80

    ; Read input
    mov eax, 3
    mov ebx, 0
    mov ecx, input
    mov edx, 4
    int 0x80

    ; Convert input to integer
    mov eax, [input]
    
    ; Check if number is zero
    cmp eax, 0
    je zero_case        ; Unconditional jump if equal to zero

    ; Check if number is positive or negative
    jg positive_case    ; Conditional jump if greater than zero
    jl negative_case    ; Conditional jump if less than zero

zero_case:
    ; Display ZERO message
    mov eax, 4
    mov ebx, 1
    mov ecx, zero_msg
    mov edx, 4
    int 0x80
    jmp exit

positive_case:
    ; Display POSITIVE message
    mov eax, 4
    mov ebx, 1
    mov ecx, positive_msg
    mov edx, 8
    int 0x80
    jmp exit

negative_case:
    ; Display NEGATIVE message
    mov eax, 4
    mov ebx, 1
    mov ecx, negative_msg
    mov edx, 8
    int 0x80

exit:
    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80

; Explanation of Jump Instructions:
; - je (Jump if Equal): Used for zero comparison
; - jg (Jump if Greater): Used for positive number detection
; - jl (Jump if Less): Used for negative number detection
; - Unconditional jumps (jmp) used to control program flow after classification