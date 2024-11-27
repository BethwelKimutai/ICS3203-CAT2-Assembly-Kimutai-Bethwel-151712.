ICS3203-CAT2-Assembly-Kimutai-Bethwel-151712
This repository contains solutions to assembly language programming tasks for ICS3203. The programs are written using NASM for x86-64 architecture and are designed to demonstrate concepts like control flow, array manipulation, modular programming, and hardware simulation.

Tasks Overview
1. Control Flow and Conditional Logic
File: classify_number.asm
This program prompts the user to enter a number and classifies it as:

POSITIVE
NEGATIVE
ZERO
Branching logic using conditional (jl, jg) and unconditional (jmp) jumps is implemented.

2. Array Manipulation with Looping and Reversal
File: reverse_array.asm
This program reverses an array of integers in place using pointers and loops. It avoids using additional memory to store the reversed array.

3. Modular Program for Factorial Calculation
File: factorial.asm
This program calculates the factorial of a number using a modular approach:

A separate subroutine performs the factorial calculation.
The stack is used to preserve register values during recursion.
4. Data Monitoring and Control Using Port-Based Simulation
File: port_control_simulation.asm
Simulates a control system that:

Reads a "sensor value" from a memory location.
Turns a "motor" on/off based on sensor input.
Triggers an "alarm" if the sensor value exceeds a threshold.
Compilation and Execution Instructions
Prerequisites
Install NASM:
On Linux: sudo apt install nasm
On macOS: brew install nasm
On Windows: Download from NASM's official website.
Install GCC or ld for linking object files:
On Linux/macOS: Usually pre-installed.
On Windows: Use MinGW or WSL.
Steps to Compile and Run
Assemble the program:
bash
Copy code
nasm -f elf64 <filename>.asm -o <filename>.o
Link the object file:
bash
Copy code
gcc <filename>.o -o <filename>
Execute the program:
bash
Copy code
./<filename>
Using VS Code
Install the "x86 and x86_64 Assembly" extension for syntax highlighting.
Create a tasks.json file for automation (optional).
Refer to the repository for the configuration template.
Challenges and Insights
Control Flow and Conditional Logic:

Managing signed comparisons (jl, jg) required attention.
ASCII to integer conversion was tricky.
Array Manipulation:

Handling pointers (rsi, rdi) and ensuring no out-of-bounds access were challenging.
Avoiding additional memory usage for the reversed array added complexity.
Modular Program for Factorial:

Recursive implementation using the stack required careful register preservation.
Debugging stack overflow issues during recursion was an insightful learning experience.
Data Monitoring and Control:

Simulating hardware ports in memory introduced challenges in bit manipulation.
Designing a decision-making structure based on sensor input was rewarding.

Additional Notes

These programs are written for 32-bit x86 architecture
Tested on Linux environment
Requires basic understanding of assembly language concepts
