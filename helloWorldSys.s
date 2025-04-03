# Program Name: helloWorld.s
# Author: Paul Raupach
# Date: 3/18/2025
# Purpose: Demonstrate "Hello, World!" using Linux System Calls.


.data
message: .asciz "Hello, Ohlone!\n"	// Our string to print

.text
.global main

main: 
	# System call : write 
	MOV r7, #4		// System number for write
	MOV r0, #1		// File descriptor 1 for stdout
	LDR r1, =message	// Load address of message into r1
	MOV r2, #24		// Length of the string
	SWI 0			// Software Interrupt (do it!)
	
	# system call : Exit safely
	MOV r7, #1		// System number for exit
	MOV r0, #0		// Exit status (like return 0 in C program main)
	SWI 0			// Software Interrupt (Make is so)


