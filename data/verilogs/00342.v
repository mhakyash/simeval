module multiplier (
    input [15:0] a,
    input [15:0] b,
    output reg [31:0] out
);
    
    reg [31:0] temp;
    reg [15:0] shift_reg;
    integer i;
    
    always @(*) begin
        temp = 0;
        shift_reg = b;
        for (i = 0; i < 16; i = i + 1) begin
            if (a[i] == 1) begin
                temp = temp + (shift_reg << i);
            end
        end
        out = temp;
    end
    
endmodule

module decoder (
    input A, B,
    output reg [3:0] Y
);
    
    always @(*) begin
        if (A == 1) begin
            Y = 2'b00;
        end else if (B == 1) begin
            Y = 2'b01;
        end else begin
            Y = 2'b11;
        end
    end
    
endmodule

module adder (
    input [31:0] in1,
    input [3:0] in2,
    output reg [31:0] out
);
    
    always @(*) begin
        out = in1 + in2;
    end
    
endmodule

module top_module (
    input [15:0] a,
    input [15:0] b,
    input A, B,
    output [31:0] out,
    output reg [3:0] Y
);
    
    wire [31:0] mult_out;
    multiplier mult(a, b, mult_out);
    decoder dec(A, B, Y);
    adder add(mult_out, Y, out);
    
endmodule