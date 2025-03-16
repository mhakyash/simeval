module WireDelay # (
  parameter Delay_g = 0,
  parameter Delay_rd = 0,
  parameter ERR_INSERT = "OFF"
)
(
  inout A,
  inout B,
  input reset,
  input phy_init_done
);

  reg A_r;
  reg B_r;
  reg B_inv ;
  reg line_en;

  reg B_nonX;

  assign A = A_r;
  assign B = B_r;

  always @ (*)
  begin
    if (B === 1'bx)
      B_nonX <= $random;
    else
      B_nonX <= B;
   end
   
  always @(*)
  begin
    if((B_nonX == 'b1) || (B_nonX == 'b0))
      B_inv <= #0 ~B_nonX ;
    else
      B_inv <= #0 'bz ;
   end
   
  always @(*) begin
    if (!reset) begin
      A_r <= 1'bz;
      B_r <= 1'bz;
      line_en <= 1'b0;
    end else begin
      if (line_en) begin
        if ((ERR_INSERT == "ON") & (phy_init_done))
          A_r <= #Delay_rd ~B_inv;
        else
          A_r <= #Delay_rd B_nonX;
        B_r <= 1'bz;
      end else begin
        A_r <= #Delay_g B;
        B_r <= 1'bz;
      end
      line_en <= (B_r !== B);
    end
  end

endmodule