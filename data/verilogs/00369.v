module priority_encoder (
    input [3:0] in,
    output reg [1:0] pos
);

wire [3:0] in_inv;
assign in_inv = ~in;

wire [1:0] pos_temp;
assign pos_temp = (in[3]) ? 2'b11 :
                 (in[2]) ? 2'b10 :
                 (in[1]) ? 2'b01 :
                 (in[0]) ? 2'b00 :
                           2'b00 ;

assign pos = (in == 4'b0000) ? 2'b00 : pos_temp;

endmodule