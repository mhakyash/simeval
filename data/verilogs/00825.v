module top_module(
    input clk,
    input rst,
    input [10:0] count_d1_reg,
    input rd_en,
    input out,
    input comp1,
    input wr_en,
    input ram_full_fb_i_reg,
    output ram_empty_i_reg
);

  wire [10:0] count_d1_reg_inst;
  wire ram_empty_i_reg_inst;

  fifo_generator_rx_inst_compare_4 fifo_inst(
    .ram_empty_i_reg(ram_empty_i_reg_inst),
    .count_d1_reg(count_d1_reg_inst),
    .rd_en(rd_en),
    .out(out),
    .comp1(comp1),
    .wr_en(wr_en),
    .ram_full_fb_i_reg(ram_full_fb_i_reg)
  );

  assign count_d1_reg_inst = count_d1_reg;
  
  always @(posedge clk) begin
    if (rst) begin
      ram_empty_i_reg_inst <= 1'b1;
    end else begin
      ram_empty_i_reg_inst <= fifo_inst.ram_empty_i_reg;
    end
  end

endmodule