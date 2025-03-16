module edge_detector (
    input clk,
    input [7:0] d,
    output reg [7:0] edge
);
    always @(posedge clk) begin
        edge <= (d ^ edge) & d;
    end
endmodule

module register_with_reset (
    input clk,
    input reset,
    input [7:0] d,
    output reg [7:0] q
);
    always @(posedge clk, negedge reset) begin
        if (!reset) begin
            q <= 8'h34;
        end else begin
            q <= d;
        end
    end
endmodule

module addictive_functional_module (
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] sum
);
    always @(a, b) begin
        sum <= a + b;
    end
endmodule

module combined_module (
    input clk,
    input reset,
    input [7:0] d,
    input [7:0] in,
    output [7:0] q
);
    wire [7:0] edge;
    wire [7:0] sum;
    
    edge_detector edge_detector_inst (
        .clk(clk),
        .d(in),
        .edge(edge)
    );
    
    register_with_reset register_inst (
        .clk(clk),
        .reset(reset),
        .d(d),
        .q(q)
    );
    
    addictive_functional_module add_inst (
        .a(edge),
        .b(q),
        .sum(sum)
    );
    
    assign q = sum;
endmodule