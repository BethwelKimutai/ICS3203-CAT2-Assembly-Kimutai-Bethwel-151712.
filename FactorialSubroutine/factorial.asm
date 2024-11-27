section .data
    prompt db 'Enter a number to calculate factorial: ', 0
    result_msg db 'Factorial is: ', 0

section .bss
    input resd 1
    result resd 1

section .text
    global _start

_start:
    ; Print input prompt
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 40
    int 0x80

    ; Read input
    mov eax, 3
    mov ebx, 0
    mov ecx, input
    mov edx, 4
    int 0x80

    ; Convert input to integer
    mov eax, [input]

    ; Call factorial subroutine
    call factorial_subroutine

    ; Print result message
    mov eax, 4
    mov ebx, 1
    mov ecx, result_msg
    mov edx, 14
    int 0x80

    ; Print factorial result
    mov eax, [result]
    call print_number

    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80

factorial_subroutine:
    ; Preserve registers on stack
    push ebp
    mov ebp, esp
    push esi
    push edi

    ; Initial setup
    mov ecx, eax      ; Input number
    mov eax, 1        ; Initialize result to 1
    
    ; Edge case: factorial of 0 or 1
    cmp ecx, 1
    jle factorial_done

factorial_loop:
    ; Multiply current result by loop counter
    mul ecx
    loop factorial_loop

factorial_done:
    ; Store final result
    mov [result], eax

    ; Restore registers
    pop edi
    pop esi
    mov esp, ebp
    pop ebp
    ret

print_number:
    ; Convert number to string and print
    mov ecx, 10       ; Base 10
    mov edi, buffer + 10  ; End of buffer
    mov byte [edi], 0 ; Null terminator

convert_loop:
    xor edx, edx      ; Clear remainder
    div ecx           ; Divide by 10
    add dl, '0'       ; Convert remainder to character
    dec edi
    mov [edi], dl
    test eax, eax
    jnz convert_loop

    ; Print converted number
    mov eax, 4
    mov ebx, 1
    mov ecx, edi
    mov edx, buffer + 10
    sub edx, edi
    int 0x80

    ret

; Stack Management Explanation:
; 1. push ebp: Save old base pointer
; 2. mov ebp, esp: Create new stack frame
; 3. push esi/edi: Preserve additional registers
; 4. Restore registers in reverse order before return