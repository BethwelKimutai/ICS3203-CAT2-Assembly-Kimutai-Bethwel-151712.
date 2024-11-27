# ICS3203-CAT2-Assembly-Kimutai-Bethwel-151712.
Overview
This repository contains assembly language programs demonstrating various programming techniques including control flow, array manipulation, subroutine implementation, and port-based simulation.
Programs
1. Control Flow Program (control-flow.asm)

Purpose: Classifies user input number as POSITIVE, NEGATIVE, or ZERO
Key Features:

Demonstrates conditional and unconditional jump instructions
Uses system calls for input/output
Implements branching logic



2. Array Reversal Program (array-reversal.asm)

Purpose: Reverses an array of integers in-place
Key Features:

Manual input parsing
In-memory array manipulation
No additional memory allocation for reversal



3. Factorial Calculation Program (factorial.asm)

Purpose: Compute factorial of user-input number
Key Features:

Modular subroutine design
Stack-based register management
Recursive-like factorial calculation



4. Sensor Control Simulation (sensor-control.asm)

Purpose: Simulate water level monitoring system
Key Features:

Simulated sensor input processing
Conditional actions based on water level
Memory location manipulation



Compilation Instructions
Prerequisites

NASM Assembler
Linux/Unix environment

Compilation Steps

Assemble the program:
bashCopynasm -f elf32 program_name.asm

Link the object file:
bashCopyld -m elf_i386 -o program_name program_name.o

Run the executable:
bashCopy./program_name


Challenges Encountered

Manual input parsing
Memory management
Register preservation
Implementing algorithms without high-level language constructs

Additional Notes

These programs are written for 32-bit x86 architecture
Tested on Linux environment
Requires basic understanding of assembly language concepts
