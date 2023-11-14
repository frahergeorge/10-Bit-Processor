module reg10 (
  input CLKb,         //Debounced Clkb
  input EN,           //Enable
  input [9:0] D,      //Input data
  output reg [9:0] Q //Output data
);

always @(negedge CLKb) begin //On the falling edge of CLK
  if (EN) begin              //If EN is high
    Q <= D;                  //Assign the value of D to Q 
  end
end

endmodule
