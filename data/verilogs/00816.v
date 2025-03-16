module add_sub (
    input [3:0] a,
    input [3:0] b,
    input enable,
    output [3:0] sum,
    output [3:0] diff
);

    wire [3:0] a_inv;
    wire [3:0] b_inv;
    wire [3:0] borrow;
    
    assign a_inv = ~a;
    assign b_inv = ~b;
    
    assign sum = a + b;
    
    assign borrow[0] = a[0] & b_inv[0];
    assign borrow[1] = (a[1] & b_inv[1]) | (a[0] & b_inv[0]);
    assign borrow[2] = (a[2] & b_inv[2]) | (a[1] & b_inv[1]) | (a[0] & b_inv[0]);
    assign borrow[3] = (a[3] & b_inv[3]) | (a[2] & b_inv[2]) | (a[1] & b_inv[1]) | (a[0] & b_inv[0]);
    
    assign diff[0] = enable ? (a[0] ^ b[0] ^ borrow[0]) : 1'bx;
    assign diff[1] = enable ? (a[1] ^ b[1] ^ borrow[1]) : 1'bx;
    assign diff[2] = enable ? (a[2] ^ b[2] ^ borrow[2]) : 1'bx;
    assign diff[3] = enable ? (a[3] ^ b[3] ^ borrow[3]) : 1'bx;
    
endmodule

module top_module (
    input [3:0] a,
    input [3:0] b,
    input enable,
    output [3:0] out
);

    wire [3:0] sum;
    wire [3:0] diff;
    
    add_sub add_sub_inst (
        .a(a),
        .b(b),
        .enable(enable),
        .sum(sum),
        .diff(diff)
    );
    
    assign out = enable ? (enable & sum) | (~enable & diff) : 1'bx;
    
endmodule