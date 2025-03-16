module clk32to40 (
  input CLK_IN1,
  output reg CLK_OUT
);

  // Clock to Q delay of 100ps
  localparam  TCQ              = 100;

  reg [1:0] counter = 2'b00;
  reg reset = 1'b0;

  always @(posedge CLK_IN1) begin
    counter <= counter + 1;
    if (counter == 2'b01) begin
      CLK_OUT <= 1'b1;
    end else if (counter == 2'b10) begin
      CLK_OUT <= 1'b0;
    end
  end

  always @(posedge CLK_IN1) begin
    if (reset == 1'b1) begin
      counter <= 2'b00;
    end else if (counter == 2'b11) begin
      reset <= 1'b1;
    end else begin
      reset <= 1'b0;
    end
  end

endmodule