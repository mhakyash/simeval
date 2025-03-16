module adder_comparator_decoder (
  input wire [2:0] a,b,c, // 3 inputs for the adder
  output wire [3:0] out_leds // Output LEDs controlled by the decoder
);

  wire [3:0] sum; // Sum of the 3 inputs
  wire cmp_out; // Output of the comparator
  reg [3:0] result; // Stored result for the decoder

  // 3-input adder
  assign sum = a + b + c;

  // 2-input comparator to compare sum with a 4-bit constant value
  assign cmp_out = (sum >= 4'b1100);

  // 4-bit register to store the result of the comparator
  always @(posedge clk) begin
    result <= cmp_out ? sum : result;
  end

  // 4-bit decoder to activate one of the four output LEDs based on the binary value of the stored result
  assign out_leds[0] = ~result[0];
  assign out_leds[1] = ~result[1];
  assign out_leds[2] = ~result[2];
  assign out_leds[3] = ~result[3];

endmodule