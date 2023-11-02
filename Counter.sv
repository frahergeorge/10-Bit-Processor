module Counter #(parameter N = 8)
(
	input wire clk, // clock
	input wire reset, // reset button
	output wire [N-1:0] q // output of q
);

always_ff @ (posedge clk, posedge reset)
	if (reset) q <= 0; // reset q to 0
	else q <= q + 1; // inc q
endmodule