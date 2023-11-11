module upcount2
(
	input wire clkb, // clock button press
	input wire clk,  // 50MHZ clock
	output wire [1:0]count, // counter 
	output logic [6:0] counter
);

wire DB;

debouncer (.A_noisy(clkb), .CLK50M(clk), .A(DB));

always_ff @ (posedge DB) //toggle on postive edge of clock or postive edge of clear button
	begin
		if (~DB) count <= 0;	// sets count to zero if reset is high
		else count <= count + 1;	// inc counts
	end
	
decimal7decoder (.SW(count), .numHEX(counter));
	
endmodule
