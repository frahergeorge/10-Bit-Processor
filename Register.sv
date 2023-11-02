module Register
(
	input wire [9:0] D,
	input wire En,
	input wire Clkb,
	output wire [9:0] Q
);

   D_ff_neg reg0(.D(D[0]), .EN(En), .CLKb(Clkb), .Q(Q[0]));
	D_ff_neg reg1(.D(D[1]), .EN(En), .CLKb(Clkb), .Q(Q[1]));
	D_ff_neg reg2(.D(D[2]), .EN(En), .CLKb(Clkb), .Q(Q[2]));
	D_ff_neg reg3(.D(D[3]), .EN(En), .CLKb(Clkb), .Q(Q[3]));
	D_ff_neg reg4(.D(D[4]), .EN(En), .CLKb(Clkb), .Q(Q[4]));
	D_ff_neg reg5(.D(D[5]), .EN(En), .CLKb(Clkb), .Q(Q[5]));
	D_ff_neg reg6(.D(D[6]), .EN(En), .CLKb(Clkb), .Q(Q[6]));
	D_ff_neg reg7(.D(D[7]), .EN(En), .CLKb(Clkb), .Q(Q[7]));
	D_ff_neg reg8(.D(D[8]), .EN(En), .CLKb(Clkb), .Q(Q[8]));
	D_ff_neg reg9(.D(D[9]), .EN(En), .CLKb(Clkb), .Q(Q[9]));


 endmodule
