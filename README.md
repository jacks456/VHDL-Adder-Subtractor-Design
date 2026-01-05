# FPGA 4-Bit Adder/Subtractor

**Background**
Arithmetic Logic Units (ALUs) are the fundamental building blocks of computer processors. This project implements a 4-bit arithmetic circuit capable of performing both addition and subtraction on signed binary numbers. The design leverages digital logic principles to reuse adder hardware for subtraction via 2's complement logic.

**The Program**
The design was implemented in VHDL and synthesized for the Xilinx ZedBoard FPGA.

* **Dual-Mode Operation:** Uses a control signal input to toggle between Addition mode and Subtraction mode dynamically.
* **XOR Logic:** Implemented XOR gates to selectively invert input bits, allowing the same Full Adder circuitry to perform subtraction (A + ~B + 1).
* **Hardware Verification:** Mapped physical switches on the ZedBoard to 4-bit inputs A and B, and mapped LEDs to the 4-bit Sum/Difference output.
* **OLED Integration:** Configured the ZedBoard's OLED display to show the operation status in real-time.

**Compiling & Running**
This project requires Xilinx Vivado.

1.  **Synthesize:** Run synthesis on the provided VHDL source files.
2.  **Generate Bitstream:** Create the configuration bitstream file.
3.  **Program Device:** Connect the ZedBoard via USB and program the FPGA.

**Examples**
*Hardware Configuration:*
* **Switches 0-3:** Input A (e.g., `0101` = 5)
* **Switches 4-7:** Input B (e.g., `0010` = 2)
* **Button Center:** Mode Select (Unpressed = Add, Pressed = Subtract)

*Output (LEDs):*
* **Add Mode:** `0111` (7)
* **Subtract Mode:** `0011` (3)
