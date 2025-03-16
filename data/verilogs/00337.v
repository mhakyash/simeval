module decoder_4to16(
    input [1:0] a,
    input [1:0] b,
    output reg [15:0] out
);
    
    wire nand1, nand2, nand3, nand4, nand5, nand6, nand7, nand8;
    wire nand9, nand10, nand11, nand12, nand13, nand14, nand15, nand16;
    
    assign nand1 = ~(a[1] & a[0]);
    assign nand2 = ~(a[1] & ~a[0]);
    assign nand3 = ~(~a[1] & a[0]);
    assign nand4 = ~(~a[1] & ~a[0]);
    
    assign nand5 = ~(b[1] & b[0]);
    assign nand6 = ~(b[1] & ~b[0]);
    assign nand7 = ~(~b[1] & b[0]);
    assign nand8 = ~(~b[1] & ~b[0]);
    
    assign nand9 = ~(nand1 & nand5);
    assign nand10 = ~(nand1 & nand6);
    assign nand11 = ~(nand1 & nand7);
    assign nand12 = ~(nand1 & nand8);
    
    assign nand13 = ~(nand2 & nand5);
    assign nand14 = ~(nand2 & nand6);
    assign nand15 = ~(nand2 & nand7);
    assign nand16 = ~(nand2 & nand8);
    
    always @ (a, b) begin
        out[0] = nand9;
        out[1] = nand10;
        out[2] = nand11;
        out[3] = nand12;
        out[4] = nand13;
        out[5] = nand14;
        out[6] = nand15;
        out[7] = nand16;
        out[8] = ~(nand3 & nand5);
        out[9] = ~(nand3 & nand6);
        out[10] = ~(nand3 & nand7);
        out[11] = ~(nand3 & nand8);
        out[12] = ~(nand4 & nand5);
        out[13] = ~(nand4 & nand6);
        out[14] = ~(nand4 & nand7);
        out[15] = ~(nand4 & nand8);
    end
    
endmodule