module registerfile
(
  input wire [9:0] D,
  input wire [1:0] WRA,
  input wire ENW,
  input wire [1:0] RDA0,
  input wire ENR0,
  input wire [1:0] RDA1,
  input wire ENR1,
  input wire Clkb,
  output wire [9:0] Q0,
  output wire [9:0] Q1
);

  reg [9:0] regfile [0:3]; // 4 registers, each 10 bits wide
  
  always @(posedge Clkb) begin
    if (ENW) begin
      regfile[WRA] <= D;
    end
  end
  
  assign Q0 = (ENR0) ? regfile[RDA0] : 10'bZ;
  assign Q1 = (ENR1) ? regfile[RDA1] : 10'bZ;

endmodule
