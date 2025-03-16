module gray_to_bcd (
    input clk,
    input reset,   // Synchronous active-high reset
    output reg [3:0] bcd_out // 4-bit BCD output
);

reg [3:0] gray_count;

always @(posedge clk) begin
    if (reset) begin
        gray_count <= 4'b0000;
        bcd_out <= 4'b0000;
    end else begin
        gray_count <= gray_count + 1;
        case (gray_count)
            4'b0000: bcd_out <= 4'b0000;
            4'b0001: bcd_out <= 4'b0001;
            4'b0011: bcd_out <= 4'b0010;
            4'b0010: bcd_out <= 4'b0011;
            4'b0110: bcd_out <= 4'b0100;
            4'b0111: bcd_out <= 4'b0101;
            4'b0101: bcd_out <= 4'b0110;
            4'b0100: bcd_out <= 4'b0111;
            4'b1100: bcd_out <= 4'b1000;
            4'b1101: bcd_out <= 4'b1001;
            4'b1111: bcd_out <= 4'b0000;
            4'b1110: bcd_out <= 4'b0001;
            default: bcd_out <= 4'bxxxx;
        endcase
    end
end

endmodule

module comparator (
    input [3:0] in1,
    input [3:0] in2,
    output flag
);

assign flag = (in1 == in2);

endmodule

module functional_module (
    input flag,
    input [3:0] bcd_in,
    output reg [15:0] q
);

reg [3:0] prev_bcd;

always @(posedge flag) begin
    if (flag) begin
        q <= {prev_bcd, 4'b0000};
    end else begin
        q <= {bcd_in, 4'b0000};
        prev_bcd <= bcd_in;
    end
end

endmodule

module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    input [3:0] comp_in, // 4-bit input for the comparator
    output [3:1] ena,    // Enable signal for the upper three digits of the BCD counter
    output [15:0] q      // 16-bit output from the functional module
);

wire [3:0] bcd_out;
wire flag;

gray_to_bcd gray_to_bcd_inst (
    .clk(clk),
    .reset(reset),
    .bcd_out(bcd_out)
);

comparator comparator_inst (
    .in1(bcd_out),
    .in2(comp_in),
    .flag(flag)
);

functional_module functional_module_inst (
    .flag(flag),
    .bcd_in(bcd_out),
    .q(q)
);

assign ena = {1'b0, flag};

endmodule