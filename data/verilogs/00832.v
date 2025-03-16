module block_ram(clk, we, addr, din, rd_en, dout);
  parameter RAM_DEPTH = 2048;
  parameter RAM_WIDTH = 10;
  input clk, we, rd_en;
  input [10:0] addr;
  input [9:0] din;
  output [9:0] dout;
  reg [9:0] dout_reg;
  wire [9:0] dout_wire;
  wire [10:0] Q;
  wire ram_full_fb_i_reg, tmp_ram_rd_en;
  wire [10:0] count_d1_reg;
  wire [0:0] out;
  
  // Calculate the address offset for the RAM
  parameter ADDR_OFFSET = $clog2(RAM_DEPTH);
  wire [ADDR_OFFSET-1:0] addr_offset = addr[ADDR_OFFSET-1:0];
  
  // Instantiate the RAMB36E1 primitive
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper__parameterized2
    ram(.clk(clk), .ram_full_fb_i_reg(ram_full_fb_i_reg), .tmp_ram_rd_en(tmp_ram_rd_en), .out(out), .Q(Q), .din(din), .dout(dout_wire), .count_d1_reg(count_d1_reg));
  
  // Connect the address inputs to the RAMB36E1 primitive
  assign Q = {addr_offset, 11'h0};
  
  // Connect the write enable input to the RAMB36E1 primitive
  assign ram_full_fb_i_reg = we;
  
  // Connect the read enable input to the RAMB36E1 primitive
  assign tmp_ram_rd_en = rd_en;
  
  // Connect the output of the RAMB36E1 primitive to the output of the module
  assign dout = dout_wire;
  
  // Register the output of the RAMB36E1 primitive
  always @(posedge clk) begin
    if (rd_en) begin
      dout_reg <= dout_wire;
    end
  end
  
  // Connect the count input to the RAMB36E1 primitive
  assign count_d1_reg[10] = clk;
endmodule