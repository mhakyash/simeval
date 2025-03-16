module pipelined_adder (
    input [99:0] a,
    input [99:0] b,
    input cin,
    output reg [99:0] sum,
    output reg cout
);

reg [99:0] a_reg, b_reg, s_reg;
reg [49:0] c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32, c33, c34, c35, c36, c37, c38, c39, c40, c41, c42, c43, c44, c45, c46, c47, c48, c49;
reg [49:0] p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31, p32, p33, p34, p35, p36, p37, p38, p39, p40, p41, p42, p43, p44, p45, p46, p47, p48, p49;

wire [49:0] g0, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, g27, g28, g29, g30, g31, g32, g33, g34, g35, g36, g37, g38, g39, g40, g41, g42, g43, g44, g45, g46, g47, g48, g49;
wire [49:0] csl0, csl1, csl2, csl3, csl4, csl5, csl6, csl7, csl8, csl9, csl10, csl11, csl12, csl13, csl14, csl15, csl16, csl17, csl18, csl19, csl20, csl21, csl22, csl23, csl24, csl25, csl26, csl27, csl28, csl29, csl30, csl31, csl32, csl33, csl34, csl35, csl36, csl37, csl38, csl39, csl40, csl41, csl42, csl43, csl44, csl45, csl46, csl47, csl48, csl49;
wire [49:0] csr0, csr1, csr2, csr3, csr4, csr5, csr6, csr7, csr8, csr9, csr10, csr11, csr12, csr13, csr14, csr15, csr16, csr17, csr18, csr19, csr20, csr21, csr22, csr23, csr24, csr25, csr26, csr27, csr28, csr29, csr30, csr31, csr32, csr33, csr34, csr35, csr36, csr37, csr38, csr39, csr40, csr41, csr42, csr43, csr44, csr45, csr46, csr47, csr48, csr49;

assign g0 = a[0] & b[0];
assign csl0 = cin & a[0];
assign csr0 = cin & b[0];
assign p0 = g0 | csl0 | csr0;
assign s_reg[0] = a[0] ^ b[0] ^ cin;
assign c0 = g0 | (a[0] & b[0]);

genvar i;
generate
    for (i = 1; i < 50; i = i + 1) begin : gen
        assign g[i] = a[i] & b[i];
        assign csl[i] = s_reg[i-1] & a[i];
        assign csr[i] = s_reg[i-1] & b[i];
        assign p[i] = g[i] | csl[i] | csr[i];
        assign s_reg[i] = a[i] ^ b[i] ^ s_reg[i-1];
        assign c[i] = g[i] | (s_reg[i-1] & (a[i] | b[i]));
    end
endgenerate

assign sum = {s_reg[49], s_reg[48], s_reg[47], s_reg[46], s_reg[45], s_reg[44], s_reg[43], s_reg[42], s_reg[41], s_reg[40], s_reg[39], s_reg[38], s_reg[37], s_reg[36], s_reg[35], s_reg[34], s_reg[33], s_reg[32], s_reg[31], s_reg[30], s_reg[29], s_reg[28], s_reg[27], s_reg[26], s_reg[25], s_reg[24], s_reg[23], s_reg[22], s_reg[21], s_reg[20], s_reg[19], s_reg[18], s_reg[17], s_reg[16], s_reg[15], s_reg[14], s_reg[13], s_reg[12], s_reg[11], s_reg[10], s_reg[9], s_reg[8], s_reg[7], s_reg[6], s_reg[5], s_reg[4], s_reg[3], s_reg[2], s_reg[1], s_reg[0]};
assign cout = c[49];

endmodule