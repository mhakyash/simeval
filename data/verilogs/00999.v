module my_module (
    output X,
    input A,
    input SLEEP_B,
    input VPWR,
    input KAGND,
    input VPB,
    input VNB
);

    assign X = (A == 1) && (SLEEP_B == 0) && (VPWR > 0) && (KAGND == 0) && (VPB > VNB);

endmodule