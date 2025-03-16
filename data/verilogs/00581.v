module binary_counter(
  input clk, // clock input
  input reset, // reset input
  input enable, // enable input
  output reg [3:0] count // binary count output
);

  always @(posedge clk) begin
    if (reset) begin
      count <= 4'b0000; // reset count to 0
    end else if (enable) begin
      count <= count + 1; // increment count on rising edge of clock when enable is high
    end
  end

endmodule