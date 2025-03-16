module dff_reset (
    input clk,
    input reset,
    input [7:0] d,
    output reg [7:0] q
);
    always @(negedge clk) begin
        if (reset) begin
            q <= 8'h5A;
        end else begin
            q <= d;
        end
    end
endmodule

module rising_edge_detector (
    input clk,
    input [31:0] in,
    output reg [31:0] out
);
    always @(posedge clk) begin
        out <= in & ~{out};
    end
endmodule

module bitwise_and (
    input [31:0] in1,
    input [31:0] in2,
    output reg [31:0] out
);
    always @(*) begin
        out = in1 & in2;
    end
endmodule

module top_module (
    input clk,
    input reset,
    input [7:0] d,
    input [31:0] in,
    output [31:0] out
);
    wire [31:0] rising_edge_out;
    wire [31:0] dff_out;
    
    dff_reset dff_inst (
        .clk(clk),
        .reset(reset),
        .d(d),
        .q(dff_out)
    );
    
    rising_edge_detector red_inst (
        .clk(clk),
        .in(in),
        .out(rising_edge_out)
    );
    
    bitwise_and and_inst (
        .in1(rising_edge_out),
        .in2(dff_out),
        .out(out)
    );
endmodule