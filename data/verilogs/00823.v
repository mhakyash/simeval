module transition_detector (
    input clk,
    input [31:0] in,
    output [31:0] out
);

reg [31:0] in_reg;
reg [31:0] out_reg;
reg [31:0] out_hold;

always @(posedge clk) begin
    if (in_reg == 32'hFFFFFFFF) begin
        out_reg <= 32'h00000000;
    end else begin
        out_reg <= out_hold;
    end
    in_reg <= in;
end

assign out = out_reg;

genvar i;
generate
    for (i = 0; i < 32; i = i + 1) begin : bit_loop
        reg [1:0] d_ff;
        assign d_ff[0] = in_reg[i] ^ in_reg[i+1];
        assign d_ff[1] = d_ff[0] ^ 1'b1;
        always @(posedge clk) begin
            if (reset) begin
                out_hold[i] <= 1'b0;
            end else if (d_ff[1]) begin
                out_hold[i] <= 1'b1;
            end
        end
    end
endgenerate

endmodule