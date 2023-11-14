module upcount2
(
  input wire clkb, // clock button press
  input wire clk,  // 50MHz clock
  output wire [1:0] count = 2'b00, // counter
  output logic [6:0] counter
);

  wire DB;
 
  debouncer deb (.A_noisy(clkb), .CLK50M(clk), .A(DB));
 
  always_ff @(negedge DB) begin
    begin
        // Increment condition
        case (count)
            2'b00: count = 2'b01;
            2'b01: count = 2'b10;
            2'b10: count = 2'b11;
            2'b11: count = 2'b00;
            default: count = 2'b00; // Default case to handle unexpected values
        endcase
    end
  end
 
  decimal7decoder dec (.SW(count), .numHEX(counter));

endmodule
