module arithmetic_module (
    input Boo_ba1, // Input to SubA
    input Boo_ba2, // Input to SubB
    input b,       // Input to SubB
    input Boo_ba3, // Input to SubC
    input c,       // Input to SubC
    output [3:0] f4_dotnamed // Output of the module
);

wire [3:0] f1_dotnamed;
wire [3:0] f2_dotnamed;
wire [3:0] f3_dotnamed;

SubA suba1 (.a(Boo_ba1), .f1_dotnamed(f1_dotnamed));
SubB suba2 (.a(Boo_ba2), .b(b), .f2_dotnamed(f2_dotnamed));
SubC suba3 (.a(Boo_ba3), .c(c), .f3_dotnamed(f3_dotnamed));

assign f4_dotnamed = f1_dotnamed + f2_dotnamed + f3_dotnamed;

endmodule

module SubA (
    input a,
    output reg [3:0] f1_dotnamed
);

// SubA code here
always @ (a)
begin
    f1_dotnamed = a << 1;
end

endmodule

module SubB (
    input a,
    input b,
    output reg [3:0] f2_dotnamed
);

// SubB code here
always @ (a, b)
begin
    f2_dotnamed = a + b;
end

endmodule

module SubC (
    input a,
    input c,
    output reg [3:0] f3_dotnamed
);

// SubC code here
always @ (a, c)
begin
    f3_dotnamed = a - c;
end

endmodule