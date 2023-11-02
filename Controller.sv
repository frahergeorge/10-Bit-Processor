module controller
(
	input wire [9:0] INSTR,
	input wire T,
	output wire [1:0] IMM,
	output wire Rin,
	output wire [1:0] Rout,
	output wire ENW,
	output wire ENR,
	output wire Ain,
	output wire Gin,
	output wire Gout,
	output wire [3:0] ALUcont,
	output wire Ext,
	output wire IRin,
	output wire Clr
);