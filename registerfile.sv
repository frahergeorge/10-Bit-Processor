module registerfile(

		//INPUTS//
		
	input wire [9:0] D,     //10 bit input signal
	
	input wire [1:0] WRA,   //Write Address
	
	input wire ENW,         //Enable Write
	
	input wire [1:0] RDA0,  //Read Address 0 
	
	input wire ENR0,        //Enable read signal to read from the register file 
	
	input wire [1:0] RDA1,  //Read Address 1
	
	input wire ENR1,		//Enable read signal to read from the register file 
	
	input wire Clkb,        //Debounced Clock 

		//OUTPUTS//
   
	output wire [9:0] Q0,  //Q not, 10 bit output signal

	output wire [9:0] Q1   //Q, 10 bit output signal
);



endmodule