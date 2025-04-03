# Program Name: helloWorldMain.s
# Author: Paul Raupach III
# Date: 3/13/2025
# Purpose: To say Hello to the World!.

.text
.global main	 // Defines the entry point
main: 
	# Save return to OS on the stack
	SUB sp, sp, #4	// move the stack point down 4 bytes
	STR lr, [sp, #0] // store the value in the link register on the stack
	

	# Enter your program here.

	# Print the message
	LDR r0, =helloWorld	// store the address of the hello world string
				// into register 0
	BL printf		// call the printf function
	
	# Return to OS 
	LDR lr, [sp, #0] // load into the link register the value on the stack
	ADD sp, sp, #4 // pop 4 bytes off the stack
	MOV pc, lr // copy the value from the link register to the
		   // program counter. Return control to the OS
.data // Data section (if needed:)
helloWorld:	.asciz "Hello, World!\n" // Define a string in static memory

