module rising_edge_detector (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);

reg [31:0] prev;
reg [31:0] curr;

always @(posedge clk) begin
    if (reset) begin
        prev <= 0;
        curr <= 0;
        out <= 0;
    end else begin
        prev <= curr;
        curr <= in;
        out <= (curr & ~prev);
    end
end

endmodule

module mux_6to1 (
    input [2:0] sel,
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out
);

always @(*) begin
    case (sel)
        3'b000: out = data0;
        3'b001: out = data1;
        3'b010: out = data2;
        3'b011: out = data3;
        3'b100: out = data4;
        3'b101: out = data5;
        3'b110, 3'b111: out = data0 | data1 | data2 | data3 | data4 | data5;
    endcase
end

endmodule

module functional_module (
    input [31:0] rising_edge,
    input [3:0] mux_output,
    output reg out
);

always @(*) begin
    out = (rising_edge & (mux_output == 4'b1111));
end

endmodule

module top_module (
    input clk,
    input reset,
    input [31:0] in,
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [31:0] out
);

wire [31:0] rising_edge;
wire [3:0] mux_output;

rising_edge_detector red (
    .clk(clk),
    .reset(reset),
    .in(in),
    .out(rising_edge)
);

mux_6to1 mux (
    .sel(sel),
    .data0(data0),
    .data1(data1),
    .data2(data2),
    .data3(data3),
    .data4(data4),
    .data5(data5),
    .out(mux_output)
);

functional_module fm (
    .rising_edge(rising_edge),
    .mux_output(mux_output),
    .out(out)
);

endmodule