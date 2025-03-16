module core_btb(
    input clk,
    input rst,
    input [31:0] pc,
    input update_btb_tag,
    input update_btb_target,
    input [31:0] btb_target_in,
    input [1:0] btb_type_in,
    input PHT_pred_taken,
    output btb_v,
    output [31:0] btb_target_out,
    output [1:0] btb_type_out,
    output en_btb_pred
);

parameter pc_tag_width = 11;
parameter btb_target_width = 32;
parameter btb_depth = 64;
parameter BTB_TARGET_INIT = 32'h00000000;
parameter BTB_TAG_INIT = 11'b00000000000;

input              clk;
input              rst;
input     [31:0]   pc;
input              update_btb_target;
input              update_btb_tag;
input     [31:0]   btb_target_in;
input     [1:0]    btb_type_in;
input              PHT_pred_taken;
output             btb_v;
output   [31:0]   btb_target_out;
output   [1:0]    btb_type_out;
output             en_btb_pred;

reg   [pc_tag_width-1:0]       btb_tag     [btb_depth-1:0];
reg   [btb_target_width-1:0]   btb_target  [btb_depth-1:0];

wire    [5:0]  pc_index;
assign  pc_index = pc[7:2];

wire    [10:0]  btb_tag_in;
assign    btb_tag_in = {pc[29]^pc[28],pc[27]^pc[26],pc[25]^pc[24],pc[23]^pc[22],
                       pc[21]^pc[20],pc[19]^pc[18],pc[17]^pc[16],pc[15]^pc[14],
                       pc[13]^pc[12],pc[11]^pc[10],pc[9]^pc[8]};

always @(posedge clk) begin
    if (update_btb_target) begin
        btb_target[pc_index] <= {btb_target_in[31:2], btb_type_in};
    end
end

always @(posedge clk) begin
    if (update_btb_tag) begin
        btb_tag[pc_index] <= btb_tag_in;
    end
end

wire btb_hit;
assign btb_hit = (btb_tag[pc_index] == btb_tag_in);

wire [31:0] btb_temp;
assign btb_temp = btb_target[pc_index];

wire [10:0] btb_tag_out;
assign btb_tag_out = btb_tag[pc_index];

assign btb_target_out = {btb_temp[31:2], 2'b00};
assign btb_type_out = btb_temp[1:0];
assign btb_v = btb_hit;

assign en_btb_pred = btb_v && PHT_pred_taken;

endmodule