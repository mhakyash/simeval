module pipeemreg(i_wreg,i_m2reg,i_wmem,i_alu,i_b,i_rn,clk,rst,o_wreg,o_m2reg,o_wmem,o_alu,o_b,o_rn);
  input wire clk, rst,i_wreg,i_m2reg,i_wmem;
  input wire [31:0] i_b,i_alu;
  input wire [4:0] i_rn;
  output reg o_wreg,o_m2reg,o_wmem;
  output reg [31:0] o_b,o_alu;
  output reg [4:0] o_rn;
  always @(posedge clk) begin
    if (rst) begin 
      o_wreg<=0;
      o_m2reg<=0;
      o_wmem<=0;
      o_alu<=0;
      o_b<=0;
      o_rn<=0;
    end
    else begin 
      o_wreg<=i_wreg;
      o_m2reg<=i_m2reg;
      o_wmem<=i_wmem;
      o_alu<=i_alu;
      o_b<=i_b;
      o_rn<=i_rn;
    end
  end
endmodule