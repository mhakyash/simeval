module shift_register ( input clk, input d, output q );

  reg [2:0] shift_reg;
  
  always @(posedge clk) begin
    shift_reg <= {shift_reg[1:0], d};
  end
  
  assign q = shift_reg[2];
  
endmodule