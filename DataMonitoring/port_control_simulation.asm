section .data
    high_alarm_msg db 'ALARM: Water level too high!', 0
    motor_stop_msg db 'Motor stopped: Water level moderate', 0
    motor_run_msg db 'Motor running: Water level normal', 0

section .bss
    sensor_input resd 1
    motor_status resd 1
    alarm_status resd 1

section .text
    global _start

_start:
    ; Simulate sensor reading (for demonstration)
    ; In real system, this would read from actual input port
    mov dword [sensor_input], 75  ; Example water level (0-100%)

    ; Control logic based on sensor input
    call check_water_level

    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80

check_water_level:
    ; Water level control logic
    mov eax, [sensor_input]

    ; High water level (> 80%)
    cmp eax, 80
    jg high_level_action

    ; Moderate water level (40-80%)
    cmp eax, 40
    jge moderate_level_action

    ; Low water level (< 40%)
    jmp low_level_action

high_level_action:
    ; Trigger high-level alarm
    mov dword [alarm_status], 1
    mov dword [motor_status], 0   ; Stop motor

    ; Print high-level alarm message
    mov eax, 4
    mov ebx, 1
    mov ecx, high_alarm_msg
    mov edx, 28
    int 0x80

    ret

moderate_level_action:
    ; Stop motor, no alarm
    mov dword [motor_status], 0
    mov dword [alarm_status], 0

    ; Print motor stop message
    mov eax, 4
    mov ebx, 1
    mov ecx, motor_stop_msg
    mov edx, 38
    int 0x80

    ret

low_level_action:
    ; Normal operation: Run motor
    mov dword [motor_status], 1
    mov dword [alarm_status], 0

    ; Print motor run message
    mov eax, 4
    mov ebx, 1
    mov ecx, motor_run_msg
    mov edx, 37
    int 0x80

    ret

; Memory/Port Simulation Notes:
; 1. sensor_input represents input port/sensor reading
; 2. motor_status simulates motor control port
; 3. alarm_status represents alarm trigger
; 4. Conditional jumps used for level-based decisions