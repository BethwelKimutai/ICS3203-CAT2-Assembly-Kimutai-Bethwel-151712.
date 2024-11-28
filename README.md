# ICS3203-CAT2-Assembly-Kimutai-Bethwel-151712

## Overview

This repository contains the solutions to the practical tasks assigned in **ICS3203 CAT 2**. Each program is written in assembly language and demonstrates core programming concepts such as control flow, looping, modular programming, and hardware simulation. Below is an overview of each task:

### Task 1: Control Flow and Conditional Logic
- **Purpose:** Classify a user-input number as "POSITIVE," "NEGATIVE," or "ZERO" using conditional and unconditional jumps.
- **Highlights:** This program demonstrates effective branching logic and explains the rationale behind the choice of jump instructions.

### Task 2: Array Manipulation with Looping and Reversal
- **Purpose:** Reverse an array of integers in place without using additional memory.
- **Highlights:** The solution utilizes loops to reverse the array efficiently, and each step is well-commented to explain the logic and challenges of direct memory manipulation.

### Task 3: Modular Program with Subroutines for Factorial Calculation
- **Purpose:** Compute the factorial of a number using a modular approach with subroutines and the stack for register preservation.
- **Highlights:** Demonstrates the use of modular programming and stack operations to manage register values during subroutine execution.

### Task 4: Data Monitoring and Control Using Port-Based Simulation
- **Purpose:** Simulate a control program that monitors a "sensor value" and performs specific actions (e.g., turning on a motor, triggering an alarm) based on the input.
- **Highlights:** Explains how memory locations or ports are manipulated to simulate hardware actions effectively.

---

## Instructions

### Compiling the Code
1. Ensure you have an assembly language compiler or simulator (e.g., MASM, NASM, or any platform-specific tool).
2. Open the terminal or command prompt in the directory containing the `.asm` files.
3. Compile each program using the command:
   ```bash
    <compiler> <filename>.asm -o <filename>.exe
Replace `<compiler>` with your tool (e.g., `nasm`, `masm`) and `<filename>` with the specific task file name.

For example to run Control flow and logic:
  ```bash
nasm -f elf32 classify_number.asm -o classify_number.o
ld -m i386pe classify_number.o -o classify_number.exe
./classify_number.exe
```

### Running the Code
1. After successful compilation, run the program using:
   ```bash
    ./<filename>.exe
2. Follow the prompts provided by the program for inputs.

---

## Challenges and Insights

### Task 1: Control Flow and Conditional Logic
- **Challenge:** Determining the most efficient combination of conditional and unconditional jumps.
- **Insight:** Unconditional jumps were used to exit once a case was handled, improving program clarity and flow.

### Task 2: Array Manipulation with Looping and Reversal
- **Challenge:** Managing memory directly while avoiding auxiliary storage.
- **Insight:** Implementing an in-place reversal using pointers was challenging but achieved with careful index manipulation.

### Task 3: Modular Program with Subroutines for Factorial Calculation
- **Challenge:** Managing stack operations to preserve registers during subroutine calls.
- **Insight:** Using the stack allowed for a clean and modular implementation, improving the reusability of the factorial subroutine.

### Task 4: Data Monitoring and Control Using Port-Based Simulation
- **Challenge:** Simulating hardware interactions effectively.
- **Insight:** Assigning specific memory locations for the "sensor" and "motor" simplified the logic for hardware status manipulation.

---

## Challenges
1. Memory management was a recurring challenge, especially in tasks like array reversal where no extra memory was allocated for the reversed array.
2. Control flow logic in Task 1 was critical to ensure correct handling of positive, negative, and zero values.
3. Stack management in Task 3 required careful handling of function calls and register preservation.
4. System-level programming involving direct manipulation of memory and I/O using sys_write and sys_read provided hands-on experience with low-level assembly operations.
   
## Conclusion
This project helped reinforce concepts of assembly programming, including the use of registers, conditional and unconditional jumps, loops, memory management, and subroutines. Each task presented unique challenges that required an understanding of how to manipulate low-level system resources directly.

## Repository Structure


   ```bash
         ICS3203-CAT2-Assembly-Kimutai-Bethwel-151712/
      ├── ControlFlowAndLogic/
      │   ├── classify_number.asm
      │   ├── classify_number.o
      ├── ArrayManipulation/
      │   ├── reverse_array.asm
      │   ├── reverse_array.o
      ├── FactorialSubroutine/
      │   ├── factorial.asm
      │   ├── factorial.o
      ├── DataMonitoring/
      │   ├── port_control_simulation.asm
      │   ├── port_control_simulation.o
      └── README.md
  ```
