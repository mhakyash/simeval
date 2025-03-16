module verilog_module (
    X   ,
    A1_N,
    A2_N,
    B1  ,
    B2  ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    output X   ;
    input  A1_N;
    input  A2_N;
    input  B1  ;
    input  B2  ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;
    
    reg X;
    
    always @(*) begin
        if (A1_N == 0 && A2_N == 0 && B1 == 1 && B2 == 1) begin
            X = 1;
        end else begin
            X = 0;
        end
    end
    
endmodule