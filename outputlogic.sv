module outputlogic(

		//Inputs//

	input wire [9:0] BUS,

	input wire [9:0] REG,

	input wire [1:0] TIME,

	input wire PEEKb,

	input wire DONE,

		//Outputs//

	output wire [9:0] LED_B,

	output wire [6:0] DHEX0,

	output wire [6:0] DHEX1,

	output wire [6:0] DHEX2,

	output wire [6:0] THEX1,

	output LED_D
	 
	);

endmodule