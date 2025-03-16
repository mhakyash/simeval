module d_ff_async_rst_set (
  input clk,
  input rst,
  input set,
  input d,
  output q,
  output qn
);

  reg q_i;
  wire q = q_i;
  assign qn = ~q_i;

  always @(posedge clk) begin
    if (rst == 1'b0) begin
      q_i <= 1'b0; // Asynchronous reset
    end else if (set == 1'b0) begin
      q_i <= 1'b1; // Asynchronous set
    end else begin
      q_i <= d; // Rising edge triggered
    end
  end

endmodule