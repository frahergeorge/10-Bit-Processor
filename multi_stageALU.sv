module multi_stageALU(

		//INPUTS//

	input wire [9:0] OP,   //Operation Code, connects to Q0 from the register file 

	input wire Ain,        //Ain, connects to Ain on the controller 

	input wire Gin,        //Gin, connects to Gin on the controller

	input wire Gout,       //Gout, connects to Gout on the controller

	input wire [3:0] FN,   //Function, connects to ALUcont on the controller

	   //OUTPUTS//

	output wire [9:0] RES //connects to output logic and also is sent back to register

);

	wire [5:0] instruction;
	assign instruction{OP[9:8], OP[3:0]};

endmodule
