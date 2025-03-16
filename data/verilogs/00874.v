module rotator_module (
    input clk,
    input load,
    input [1:0] ena,
    input [99:0] data_in,
    output reg [99:0] data_out
);

reg [99:0] shift_reg;

always @(posedge clk) begin
    if (load) begin
        shift_reg <= data_in;
    end else if (ena == 2'b01) begin
        shift_reg <= {shift_reg[98:0], shift_reg[99]};
    end else if (ena == 2'b10) begin
        shift_reg <= {shift_reg[1:99], shift_reg[0]};
    end
end

assign data_out = shift_reg;

endmodule

module six_to_one_mux (
    input [99:0] data0,
    input [99:0] data1,
    input [99:0] data2,
    input [99:0] data3,
    input [99:0] data4,
    input [99:0] data5,
    input [2:0] sel,
    output reg [99:0] q
);

always @(*) begin
    case (sel)
        3'b000: q = data0;
        3'b001: q = data1;
        3'b010: q = data2;
        3'b011: q = data3;
        3'b100: q = data4;
        3'b101: q = data5;
        default: q = data0;
    endcase
end

endmodule

module functional_module (
    input [99:0] rotator_out,
    input [99:0] mux_out,
    output reg [99:0] q
);

always @(*) begin
    q = rotator_out | mux_out;
end

endmodule

module top_module ( 
    input clk,
    input load,
    input [1:0] ena,
    input [99:0] data0,
    input [99:0] data1,
    input [99:0] data2,
    input [99:0] data3,
    input [99:0] data4,
    input [99:0] data5,
    input [2:0] sel,
    output reg [99:0] q 
);

wire [99:0] rotator_out;
wire [99:0] mux_out;

rotator_module rotator_inst (
    .clk(clk),
    .load(load),
    .ena(ena),
    .data_in(q),
    .data_out(rotator_out)
);

six_to_one_mux mux_inst (
    .data0(data0),
    .data1(data1),
    .data2(data2),
    .data3(data3),
    .data4(data4),
    .data5(data5),
    .sel(sel),
    .q(mux_out)
);

functional_module func_inst (
    .rotator_out(rotator_out),
    .mux_out(mux_out),
    .q(q)
);

endmodule