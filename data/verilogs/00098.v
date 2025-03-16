module MMU(clk,
    reqType, ofs, lbid, addr, invalid,
    lbidw, lbTypew, basew, countw, we);
    input clk;
    input [5:0] reqType;
    input [15:0] ofs;
    input [11:0] lbid;
    output [15:0] addr;
    output invalid;
    input [11:0] lbidw;
    input [5:0] lbTypew;
    input [15:0] basew;
    input [15:0] countw;
    input we;
    wire [15:0] base;
    wire [15:0] count;
    wire [5:0] lbType;
    LabelTable lbt(clk, lbid, lbidw, lbType, lbTypew, base, basew, count, countw, we);
    AddrDecoder addrdec(reqType, ofs, base, count, lbType, addr, invalid);
endmodule