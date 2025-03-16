module FIFO_pixelq_op_img_rows_V_channel_shiftReg (
    clk,
    data,
    ce,
    a,
    q
);

parameter DATA_WIDTH = 12;
parameter ADDR_WIDTH = 2;
parameter DEPTH = 3;

input clk;
input [DATA_WIDTH-1:0] data;
input ce;
input [ADDR_WIDTH-1:0] a;
output reg [DATA_WIDTH-1:0] q;

reg [DATA_WIDTH-1:0] SRL_SIG [0:DEPTH-1];
integer i;

always @ (posedge clk) begin
    if (ce) begin
        for (i=0;i<DEPTH-1;i=i+1) begin
            SRL_SIG[i+1] <= SRL_SIG[i];
        end
        SRL_SIG[0] <= data;
    end else begin
        for (i=0;i<DEPTH-1;i=i+1) begin
            SRL_SIG[i+1] <= SRL_SIG[i];
        end
    end
    q <= SRL_SIG[a];
end

endmodule