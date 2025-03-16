module curr_source_sink (
  input enable,
  input [31:0] i_set,
  input [31:0] i_in,
  output [31:0] i_out,
  output [31:0] i_sunk
);

  reg [31:0] i_out_reg;
  reg [31:0] i_sunk_reg;

  always @(*) begin
    if(enable == 1'b0) begin
      i_out_reg = 32'h0;
      i_sunk_reg = 32'h0;
    end else if(i_in < i_set) begin
      i_out_reg = 32'h0;
      i_sunk_reg = i_set - i_in;
    end else begin
      i_out_reg = i_in - i_set;
      i_sunk_reg = 32'h0;
    end
  end

  assign i_out = i_out_reg;
  assign i_sunk = i_sunk_reg;

endmodule