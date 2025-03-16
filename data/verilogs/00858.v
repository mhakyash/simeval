module servo_control_block (
  input [7:0] ctrl,
  input clk,
  output reg [15:0] pos
);

  reg [15:0] count = 0;
  reg [15:0] pulse_width = 0;

  always @(posedge clk) begin
    count <= count + 1;
    if (count >= 20000) begin
      count <= 0;
    end
    if (count < pulse_width) begin
      pos <= 1;
    end else begin
      pos <= 0;
    end
  end

  always @(posedge clk) begin
    if (count == 0) begin
      pulse_width <= ctrl * 8 + 1000;
    end
  end

endmodule