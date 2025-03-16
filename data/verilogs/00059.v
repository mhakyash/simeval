module vio_0(clk, probe_out0, probe_out1, probe_out2, probe_out3);
  input clk;
  output [0:0]probe_out0;
  output [0:0]probe_out1;
  output [0:0]probe_out2;
  output [0:0]probe_out3;
  
  reg [0:0]probe_out0_reg;
  reg [0:0]probe_out1_reg;
  reg [0:0]probe_out2_reg;
  reg [0:0]probe_out3_reg;
  
  always @(posedge clk) begin
    probe_out0_reg <= probe_out0;
    probe_out1_reg <= probe_out1;
    probe_out2_reg <= probe_out2;
    probe_out3_reg <= probe_out3;
  end
  
  assign probe_out0 = probe_out0_reg;
  assign probe_out1 = probe_out1_reg;
  assign probe_out2 = probe_out2_reg;
  assign probe_out3 = probe_out3_reg;
  
endmodule