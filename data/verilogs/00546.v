module stdreg_en (
  input clk,
  input ld,
  input [width-1:0] d,
  output lz,
  output [width-1:0] z
);

  parameter integer rscid = 1;
  parameter integer width = 8;

  reg [width-1:0] reg_data;
  reg lz_reg;

  always @(posedge clk) begin
    if (ld) begin
      reg_data <= d;
      lz_reg <= 0;
    end else begin
      lz_reg <= reg_data !== reg_data;
    end
  end

  assign lz = lz_reg;
  assign z = reg_data;

endmodule