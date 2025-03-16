module lfsr (
    input rst,
    input clk,
    input base,
    output reg out
);

reg [16:0] bb;
assign out = bb[16];

always @(posedge clk) begin : base_counter
    if (rst) begin
        bb <= init;
    end
    else begin
        if (base) begin
            bb[16:1] <= bb[15:0];
            bb[0] <= ~(bb[16] ^ bb[13]);
        end
    end
end

endmodule