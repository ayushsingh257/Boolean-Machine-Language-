// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

	@1
	D=M //copy R1 into D
	@times
	M=D // and now M[times] = R1
	@2
	M=0 //initialize sum to 0
(LOOP)
	@times
	D=M //d = times
	@END
	D; JEQ // if times = 0, break 
	@1
	D=D-A //d = times - 1
	@times
	M=D // and now, times = times-1
	@2
	D=M
	@0
	D=D+M // d = R0 + SUM
	@2
	M=D //and, now sum = sum+R0
	@LOOP
	0;JMP

(END)  
       @END
       0; JMP