module barrier_module (
  input clk_i,
  input reset_i,
  input [dirs_p-1:0] data_i,
  input [dirs_p-1:0] src_r_i,
  input [lg_dirs_lp-1:0] dest_r_i,
  output [dirs_p-1:0] data_o
);

  parameter dirs_p = 4;
  parameter lg_dirs_lp = 2;

  reg [dirs_p-1:0] data_r;
  reg activate_n;
  reg sense_r;

  wire [dirs_p:0] data_broadcast_in;
  wire data_broadcast_out;

  wire [dirs_p-1:0] gather_and;
  wire [dirs_p-1:0] gather_or;
  wire gather_out;

  wire sense_n;

  wire [dirs_p:0] dest_decode;

  assign data_broadcast_in = data_r[dest_r_i];

  assign sense_n = data_broadcast_in ^ sense_r;

  assign dest_decode = (1 << (dirs_p)) - (1 << dest_r_i);

  assign gather_and = & (~src_r_i | data_r[dirs_p-1:0]);
  assign gather_or  = | (src_r_i & data_r[dirs_p-1:0]);

  assign gather_out = (gather_and == 1'b1) ? 1'b1 :
                      ((gather_or == 1'b0) ? 1'b0 : 1'bZ);

  assign data_broadcast_out = {dirs_p{data_broadcast_in}} & src_r_i;

  assign data_o = data_broadcast_out | (gather_out ? dest_decode : 0);

  always @(posedge clk_i) begin
    if (reset_i) begin
      data_r <= 0;
      activate_n <= 0;
      sense_r <= 0;
    end
    else begin
      data_r <= {data_i[dirs_p-2:0], activate_n};
      sense_r <= sense_n;
      activate_n <= gather_out;
    end
  end

endmodule