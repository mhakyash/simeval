module shift_register(
    input clk,
    input [DATA_WIDTH-1:0] data,
    input ce,
    input [ADDR_WIDTH-1:0] a,
    output [DATA_WIDTH-1:0] q
);

parameter DATA_WIDTH = 32;
parameter ADDR_WIDTH = 5;
parameter DEPTH = 32;

reg [DATA_WIDTH-1:0] SRL_SIG [0:DEPTH-1];
integer i;

always @ (posedge clk) begin
    if (ce) begin
        for (i=0;i<DEPTH-1;i=i+1) begin
            SRL_SIG[i+1] <= SRL_SIG[i];
        end
        SRL_SIG[0] <= data;
    end
end

assign q = SRL_SIG[a];

endmodule