module mul_16_32_mult_gen
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [31:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [47:0]P;
  output [47:0]PCASC;

  reg [15:0]A_reg;
  reg [31:0]B_reg;
  reg [47:0]P_reg;
  reg [47:0]PCASC_reg;
  reg [1:0]ZERO_DETECT_reg;
  
  always @(posedge CLK) begin
    if (SCLR == 1'b1) begin
      A_reg <= 16'b0;
      B_reg <= 32'b0;
      P_reg <= 48'b0;
      PCASC_reg <= 48'b0;
      ZERO_DETECT_reg <= 2'b0;
    end else if (CE == 1'b1) begin
      A_reg <= A;
      B_reg <= B;
      P_reg <= {16'b0, B_reg} * A_reg;
      PCASC_reg <= P_reg + PCASC_reg;
      ZERO_DETECT_reg <= (P_reg == 48'b0) ? 2'b11 : 2'b00;
    end
  end
  
  assign P = P_reg;
  assign PCASC = PCASC_reg;
  assign ZERO_DETECT = ZERO_DETECT_reg;
endmodule