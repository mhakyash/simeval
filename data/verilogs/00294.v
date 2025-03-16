module dual_edge_ff (
    input clk,
    input d,
    output reg q
);
    reg q1, q2;
    
    always @(posedge clk) begin
        q1 <= d;
    end
    
    always @(negedge clk) begin
        q2 <= q1;
    end
    
    assign q = q2;
endmodule

module adder_16bit (
    input [15:0] A,
    input [15:0] B,
    input cin,
    output [15:0] sum,
    output cout
);
    wire [15:0] p, g;
    
    assign p = A ^ B;
    assign g = A & B;
    
    assign sum = p ^ cin;
    assign cout = g | (p & cin);
endmodule

module adder_32bit (
    input [31:0] A,
    input [31:0] B,
    input cin,
    output [31:0] sum,
    output cout
);
    wire [15:0] A0, B0, A1, B1;
    wire c0, c1;
    
    assign A0 = A[15:0];
    assign B0 = B[15:0];
    assign A1 = A[31:16];
    assign B1 = B[31:16];
    
    adder_16bit adder0(.A(A0), .B(B0), .cin(cin), .sum(sum[15:0]), .cout(c0));
    adder_16bit adder1(.A(A1), .B(B1), .cin(c0), .sum(sum[31:16]), .cout(c1));
    
    assign cout = c1;
endmodule

module top_module (
    input clk,
    input [31:0] A,
    input [31:0] B,
    output [31:0] q
);
    wire [31:0] sum;
    wire cout;
    wire d;
    
    dual_edge_ff ff(.clk(clk), .d(d));
    adder_32bit adder(.A(A), .B(B), .cin(1'b0), .sum(sum), .cout(cout));
    
    assign d = (cout == 1'b1);
    assign q = sum;
endmodule