#RISC-V 

view the README.md file in the code format (else suffer ;) )

Table Opcodes
Instruction	Signals to ALU
Inst 	Name 	                         Opcode 	Funct3 	Funct7 	br 	ALUsel 	ALUop 
LUI 	Load Upper Immediate 	        0110111 	 	 	0 	100 	8 
AUIPC 	Add Upper Immediate With PC     0010111 	 	 	0 	100 	8 
JAL 	Jump and Link               	1101111 	 	 	0 	110 	12 
JALR 	Jump and Link Register      	1100111 	 	 	0 	110 	12 
LB 	    Load Byte 	                    0000011 	000 	 	0 	111 	20 
LH 	    Load Halfword               	0000011 	001 	 	0 	111 	21 
LW   	Load Word 	                    0000011 	010 	 	0 	111 	22 
LBU 	Load Byte Unsigned             	0000011 	100 	 	0 	111 	23 
LHU 	Load Halfword Unsigned      	0000011 	101 	 	0 	111 	24 
SB  	Store Byte 	                    0100011 	000 	 	0 	111 	25 
SH  	Store Halfword 	                0100011 	001 	 	0 	111 	26 
SW  	Store Word 	                    0100011 	010 	 	0 	111 	27 
ADDI 	Add Immediate 	                0010011 	000 	 	0 	100 	8 
SLTI 	Set Less Than Immediate     	0010011 	010 	 	0 	100 	9 
SLTIU 	Set Less Than Immediate Unsigned 	0010011 	011 	 	0 	100 	10 
XORI 	Exclusive OR Immediate 	         0010011 	100 	 	0 	001 	3 
ORI 	OR Immediate 	                0010011 	110 	 	0 	001 	2 
ANDI    AND Immediate 	                0010011 	111 	 	0 	001 	1 
SLLI 	Shift Left Logical Immediate 	0010011 	001 	 	0 	010 	5 
SRLI 	Shift Right Logical Immediate 	0010011 	101 	0000000 	0 	010 	6 
SRAI 	Shift Right Arithmetic Immediate 	0010011 	101 	0100000 	0 	010 	7 
ADD 	Add 	                        0110011 	000 	0000000 	0 	100 	8 
SUB 	Subtract 	                    0110011 	000 	0100000 	0 	100 	11 
SLL 	Shift Left Logical 	            0110011 	001 	0000000 	0 	010 	5 
SLT 	Set Less Than 	                0110011 	010 	 	0 	100 	6 
SLTU 	Set Less Than Unsigned 	        0110011 	011 	 	0 	100 	6 
XOR 	Exclusive OR 	                0110011 	100 	 	0 	001 	3 
SRL 	Shift Right Logical            	0110011 	101 	0000000 	0 	010 	6 
SRA  	Shift Right Arithmetic      	0110011 	101  	0100000 	0 	010 	7 
OR  	OR 	                            0110011 	110 	 	0 	001 	 
AND 	AND 	                        0110011 	111 	 	0 	001 	 
BEQ 	Branch on Equal              	1100011 	000 	 	1 	110 	14 
BNE 	Branch on Not Equal          	1100011 	001 	 	1 	110 	15 
BLT 	Branch on Less Than 	        1100011 	100 	 	1 	110 	16 
BGE 	Branch on Greater Than or Equal 	1100011 	101 	 	1 	110 	17 
BLTU 	Branch on Less Than Unsigned 	1100011 	110 	 	1 	110 	18 
BGEU 	Branch on Greater Than or Equal Unsigned 	1100011 	111 	 	1 	110 	19 

*Cells left blank signify that those instructions don’t have the field in the instruction format

 



A)	Specifications
Register Bank Size	128 bytes
Instruction memory size	Upto 4 GB
Data memory size	Upto 4 GB
Clock Frequency	50 MHz
Bus size	32-bit
Pipeline Stages	5
RISC-V Base Integer set	RV32I

Register banks:
Each register size is 4 bytes (i.e. 32 bit) and the number of registers is 32.
Therefore, the size of the register bank is 128 Bytes.

Instruction Memory size:
1.	Number of addresses: We can calculate the total number of unique memory locations using 2 raised to the power of the number of address bits (2^32).
2.	Memory size: Since each address points to a 1 byte
Memory Size (words) = 2^32 bytes * 1 byte = 4,294,967,296 byte = 4GB

Data Memory size:
3.	Number of addresses: We can calculate the total number of unique memory locations using 2 raised to the power of the number of address bits (2^32).
4.	Memory size: Since each address points to a 32-bit word:
Memory Size (words) = 2^32 bytes * 4 bytes = 4,294,967,296 bytes = 16GB
Address bus: It is of 32 bits.

Data bus: It is of 32 bits.

Pipeline Stages: There are 5 stages and we divided by these stages using 4 pipeline registers

1)	Fetch 
2)	Decode
3)	Execute
4)	Memory


    B) ALUsel Table

ALUsel	Function
000	NOP
001	Logical operation
010	Shift operation
011	Move operation
100	Arithmetic Operation
101	Mul
110	Branch Operation
111	Load/Store operation

    C) ALUop Table

ALUop	Function
0	NOP
1	AND
2	OR
3	XOR
5	SLL
6	SRL
7	SRA
8	ADD
9	SLT
10	SLTU
11	SUB
12	JAL
13	JALR
14	BEQ
15	BNE
16	BLT
17	BGE
18	BLTU
19	BGEU
20	LB 
21	LH
22	LW
23	LBU
24	LHU
25	SB
26	SH
27	SW

