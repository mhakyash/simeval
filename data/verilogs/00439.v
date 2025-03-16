module counter (
  input wire [3:0] max_val,
  input wire reset,
  input wire clk,
  output wire [3:0] count_val
);

  reg [3:0] reg_count;

  always @ (posedge clk) begin
    if (reset) begin
      reg_count <= 4'b0;
    end else if (reg_count == max_val) begin
      reg_count <= 4'b0;
    end else begin
      reg_count <= reg_count + 1;
    end
  end

  assign count_val = reg_count;

endmodule