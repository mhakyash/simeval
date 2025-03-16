module my_RAM128X1D (input clk, input [7:0] din, output [7:0] dout);
    parameter LOC = "";

    wire [6:0] addr = din[6:0];
    wire [7:0] data = din[6:0];

    RAM128X1D #(
            .INIT(128'h0),
            .IS_WCLK_INVERTED(1'b0),
            .LOC(LOC)
        ) RAM128X1D (
            .DPO(dout[0]),
            .SPO(dout[1]),
            .D(data),
            .A(addr),
            .WCLK(clk),
            .WE(din[7]));
endmodule