// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(END)
@8191
D=A
@n
M=D

@i
M=0

@SCREEN
D=A
@ADD
M=D


@KBD
D=M

@ELSE
D;JGT

(LOOP1)
@i
D=M
@n
D=D-M
@END
D;JGT


@i
D=M

@ADD
A=M+D
M=0

@i
M=M+1

@LOOP1
0;JMP


(ELSE)
(LOOP)
@i
D=M
@n
D=D-M
@END
D;JGT
@i
D=M

@ADD
A=M+D
M=-1Z

@i
M=M+1
@LOOP
0;JMP

