module top_module (
    input [3:0] num,
    input [3:0] DATA,
    input signed [3:0] SHIFT,
    input RESET,
    output reg [3:0] OUT
);

reg [3:0] twos_comp;
reg [3:0] shifted_data;

twos_complement tc_inst (
    .num(num),
    .twos_comp(twos_comp)
);

barrel_shifter bs_inst (
    .DATA(DATA),
    .SHIFT(SHIFT),
    .RESET(RESET),
    .OUT(shifted_data)
);

always @ (posedge clk or posedge RESET) begin
    if (RESET) begin
        OUT <= 4'b0000;
    end else begin
        OUT <= twos_comp + shifted_data;
    end
end

endmodule

module twos_complement(
    input [3:0] num,
    output reg [3:0] twos_comp
);

assign twos_comp = ~num + 4'b0001;

endmodule

module barrel_shifter (
    input [3:0] DATA,
    input signed [3:0] SHIFT,
    input RESET,
    output reg [3:0] OUT
);

reg [3:0] shifted_data;

always @ (DATA or SHIFT or RESET) begin
    if (RESET) begin
        shifted_data <= 4'b0000;
    end else if (SHIFT > 0) begin
        shifted_data <= {DATA[SHIFT-1:0], 2'b00};
    end else if (SHIFT < 0) begin
        shifted_data <= {2'b00, DATA[3:abs(SHIFT)]};
    end else begin
        shifted_data <= DATA;
    end
end

assign OUT = shifted_data;

endmodule