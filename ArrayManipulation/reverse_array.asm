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

; Challenges:
; 1. Manual string to integer conversion
; 2. In-place array reversal without extra memory
; 3. Handling input parsing robustly