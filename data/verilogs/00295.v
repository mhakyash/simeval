module triangular_wave(clk, out);

  // declare inputs and outputs
  input clk;
  output reg [7:0] out;

  // declare internal variables
  reg [7:0] count = 0;
  reg [7:0] slope = 1;
  reg [7:0] peak = 255;

  // generate triangular wave
  always @(posedge clk) begin
    if (count == 0) begin
      out <= 0;
    end else if (count == peak) begin
      out <= 2*peak;
    end else if (count == 2*peak) begin
      out <= 0;
      count <= 0;
    end else begin
      out <= out + slope;
    end
    count <= count + 1;
  end

endmodule