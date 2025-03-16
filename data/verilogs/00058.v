module outbuf (pad, clk, outsig, oe);
  inout pad;
  input clk;
  input outsig, oe;
  
  reg sampled_outsig, next_sampled_outsig;
  reg sampled_oe, next_sampled_oe;
  
  assign pad = (sampled_oe) ? sampled_outsig : 1'bz;
  
  always @ (posedge clk) begin
    sampled_outsig <= next_sampled_outsig;
    sampled_oe <= next_sampled_oe;
  end
  
  always @* begin
    #1;
    next_sampled_outsig = outsig;
    next_sampled_oe = oe;
  end
endmodule