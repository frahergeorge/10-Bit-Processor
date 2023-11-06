module upcount2
(
	input wire clkb, // clock button press
	input wire clrb, // reset button press
	output wire [1:0] count // counter 
);

always_ff @ (posedge clkb, posedge clrb) //toggle on postive edge of clock or negative edge of clear button
	begin
		if (clrb) count <= 0;	// sets count to zero if reset is high
		else count <= count + 1;	// inc counts
	end
endmodule
