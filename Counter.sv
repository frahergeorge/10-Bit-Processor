module Counter
(
	input wire clk, // clock
	input wire DOWN, // 
	input wire E, // enable switch
	input wire CLRb, // Clear
	input wire LD,	//	Load
	input wire [N-1:0] D,	//
	output wire [N-1:0] Q // output of Q a.k.a CNT
);

	parameter N = 8;

always_ff @ (posedge clk, negedge CLRb) //toggle on postive edge of clock or negative edge of clear button
	begin
		if (~CLRb) Q <= 'b0;	// set Q back to 0
		else if (E)	//if enable is active high
		begin
			if (LD) Q <= D;	// if LD store D into Q
			else if (DOWN) Q <= Q - 1;	// if DOWN dec Q by 1
			else Q <= Q + 1;	// else inc Q by 1
		end
		else Q <= Q;	//if enable is active low store Q back into Q
	end
endmodule