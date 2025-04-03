# Program Name: course.s
# Author: Ayaaz
# Date: 3/18/2025
# Purpose: Prints the course details

.text
.global main

main:
	
	SUB sp, sp, #4
	STR lr, [sp, #0]
	
	
	LDR r0, =courseDetail
	BL printf 
	LDR r0, =courseTime
	BL printf
	LDR r0, =finalExam
	BL printf
	LDR r0, =professorName
	BL printf
	LDR r0, =officeNumber
	BL printf
	LDR r0, =officeHours
	BL printf
	LDR r0, =studentName
	BL printf
	LDR r0, =yearInCollege
	BL printf
	LDR r0, =pastComputerScienceClasses
	BL printf
	LDR r0, =firstCSClass
	BL printf
	LDR r0, =secondCSClass
	BL printf

	LDR lr, [sp, #0]
	ADD sp, sp, #4
	MOV pc, lr
		
	

.data
courseDetail: .asciz "Course Name: Intro to Assembly Programming\n"
courseTime: .asciz "Course Time: Tuesdays and Thursdays 9:00 - 12:10 PM\n"
finalExam: .asciz "Final Exam: May 20th, 8:00 AM - 10 AM\n"
professorName: .asciz "Professor's Name: Professor Raupach\n"
officeNumber: .asciz "Office Number: Room 1201\n"
officeHours: .asciz "Office Hours: Mo-Th 4:30 PM - 5:30 PM and by appointment\n"
studentName: .asciz "Student's Name: Ayaaz M.\n"
yearInCollege: .asciz "Year in College: Sophomore\n"
pastComputerScienceClasses: .asciz "Past Computer Science Courses:\n"
firstCSClass: .asciz "Intro to C++, Ohlone College, Professor Lin \n"
secondCSClass: .asciz "Object Oriented Programming using C++, Ohlone College, Professor Lin\n"
 
