module shift_register ( input clk, input d, input shift, output q );

  reg [2:0] register;

  always @(posedge clk) begin
    if (shift) begin
      register <= {register[1:0], d};
    end else begin
      register <= {register[2], d, register[1]};
    end
  end

  assign q = register[2];

endmodule