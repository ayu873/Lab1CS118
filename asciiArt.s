
.text
.global main

main:
	SUB sp, sp, #4
	STR lr, [sp, #0]
	LDR r0, =firstLine
	BL printf
	LDR r0, =secondLine
	BL printf
	LDR r0, =thirdLine
	BL printf
	LDR r0, =fourthLine
	BL printf
	LDR r0, =fifthLine
	BL printf
	LDR r0, =sixthLine
	BL printf
	LDR r0, =seventhLine
	BL printf
	LDR lr, [sp, #0]
	ADD sp, sp, #4
	MOV pc, lr

.data
firstLine: .asciz "a@@@@@@@@a  a@@@@@@a  a@@@@@@@a a@@@@@@@@a a@@a.  .a@@a  a@@a\n"
secondLine: .asciz "@@@@  @@@@ @@@@  @@@@ @@@@  @@@ @@@@@@@@@@ @@@@a  a@@@@  @@@@\n"
thirdLine: .asciz "@@@@  @@@@ @@@@  @@@@ @@@@  @@@    @@@@    `@@@@  @@@@'  @@@@\n"
fourthLine: .asciz "@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@'    @@@@      `@@@@@@'    @@@@\n"
fifthLine: .asciz "@@@@@@@@@' @@@@@@@@@@ @@@@@@@@a    @@@@        @@@@      `@@'\n"
sixthLine: .asciz "@@@@       @@@@  @@@@ @@@@ @@@@    @@@@        @@@@\n"
seventhLine: .asciz "@@@@       @@@@  @@@@ @@@@ @@@@    @@@@        @@@@       @@\n"

