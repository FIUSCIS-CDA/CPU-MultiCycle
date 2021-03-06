// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"
// CREATED		"Tue Mar 16 13:12:21 2021"

module CTRL(
	clk,
	reset,
	Op,
	RegDst,
	RegWrite,
	ALUSrcA,
	MemToReg,
	IRWrite,
	MemWrite,
	IorD,
	PCWriteCond,
	PCWrite,
	isBNE,
	ALUOp,
	ALUSrcB,
	PCSrc,
	state
);


input wire	clk;
input wire	reset;
input wire	[31:26] Op;
output wire	RegDst;
output wire	RegWrite;
output wire	ALUSrcA;
output wire	MemToReg;
output wire	IRWrite;
output wire	MemWrite;
output wire	IorD;
output wire	PCWriteCond;
output wire	PCWrite;
output wire	isBNE;
output wire	[1:0] ALUOp;
output wire	[1:0] ALUSrcB;
output wire	[1:0] PCSrc;
output wire	[3:0] state;

wire	addrctl;
wire	[1:0] ALUOp_ALTERA_SYNTHESIZED;
wire	[1:0] ALUSrcB_ALTERA_SYNTHESIZED;
wire	[16:0] microinstruction;
wire	[1:0] PCSrc_ALTERA_SYNTHESIZED;
wire	[3:0] SYNTHESIZED_WIRE_0;

assign	state = SYNTHESIZED_WIRE_0;




MicroROM	b2v_inst(
	.state(SYNTHESIZED_WIRE_0),
	.microinstruction(microinstruction));


FSM	b2v_myFSM(
	.clk(clk),
	.reset(reset),
	.addrctl(addrctl),
	.Op(Op),
	.NS(SYNTHESIZED_WIRE_0));


SameBit	b2v_sameBitUnit00(
	.Ain(microinstruction[0]),
	.Aout(addrctl));


SameBit	b2v_sameBitUnit02(
	.Ain(microinstruction[2]),
	.Aout(RegDst));


SameBit	b2v_sameBitUnit03(
	.Ain(microinstruction[3]),
	.Aout(RegWrite));


SameBit	b2v_sameBitUnit04(
	.Ain(microinstruction[4]),
	.Aout(ALUSrcA));


SameBit	b2v_sameBitUnit05(
	.Ain(microinstruction[5]),
	.Aout(ALUSrcB_ALTERA_SYNTHESIZED[0]));


SameBit	b2v_sameBitUnit06(
	.Ain(microinstruction[6]),
	.Aout(ALUSrcB_ALTERA_SYNTHESIZED[1]));


SameBit	b2v_sameBitUnit07(
	.Ain(microinstruction[7]),
	.Aout(ALUOp_ALTERA_SYNTHESIZED[0]));


SameBit	b2v_sameBitUnit08(
	.Ain(microinstruction[8]),
	.Aout(ALUOp_ALTERA_SYNTHESIZED[1]));


SameBit	b2v_sameBitUnit09(
	.Ain(microinstruction[9]),
	.Aout(PCSrc_ALTERA_SYNTHESIZED[0]));


SameBit	b2v_sameBitUnit10(
	.Ain(microinstruction[10]),
	.Aout(PCSrc_ALTERA_SYNTHESIZED[1]));


SameBit	b2v_sameBitUnit11(
	.Ain(microinstruction[11]),
	.Aout(MemToReg));


SameBit	b2v_sameBitUnit12(
	.Ain(microinstruction[12]),
	.Aout(IRWrite));


SameBit	b2v_sameBitUnit13(
	.Ain(microinstruction[13]),
	.Aout(MemWrite));


SameBit	b2v_sameBitUnit14(
	.Ain(microinstruction[14]),
	.Aout(IorD));


SameBit	b2v_sameBitUnit15(
	.Ain(microinstruction[15]),
	.Aout(PCWriteCond));


SameBit	b2v_sameBitUnit16(
	.Ain(microinstruction[16]),
	.Aout(PCWrite));


SameBit	b2v_sameBitUnit2(
	.Ain(microinstruction[1]),
	.Aout(isBNE));

assign	ALUOp = ALUOp_ALTERA_SYNTHESIZED;
assign	ALUSrcB = ALUSrcB_ALTERA_SYNTHESIZED;
assign	PCSrc = PCSrc_ALTERA_SYNTHESIZED;

endmodule
