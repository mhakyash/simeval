module d_ff_asynchronous (
    Q    ,
    Q_N  ,
    CLK  ,
    D    ,
    SCD  ,
    SCE  
);

    output Q    ;
    output Q_N  ;
    input  CLK  ;
    input  D    ;
    input  SCD  ;
    input  SCE  ;

    reg Q;
    wire Q_N;

    always @(posedge CLK) begin
        if(SCD) begin
            Q <= 1'b0;
        end else if(SCE) begin
            Q <= 1'b1;
        end else begin
            Q <= D;
        end
    end

    assign Q_N = ~Q;

endmodule