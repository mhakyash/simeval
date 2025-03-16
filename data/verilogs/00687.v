module sky130_fd_sc_hd__dlrtn_4 (
    Q      ,
    RESET_B,
    D      ,
    GATE_N
);

    output Q      ;
    input  RESET_B;
    input  D      ;
    input  GATE_N ;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    wire Q_int;
    reg  D_ff;

    // D flip-flop to store input value
    always @(posedge VPWR, negedge RESET_B) begin
        if (!RESET_B) begin
            D_ff <= 1'b0;
        end else begin
            D_ff <= D;
        end
    end

    // Mux to select output value
    assign Q_int = (RESET_B == 1'b0) ? 1'b0 : ((GATE_N == 1'b0) ? D_ff : Q);

    sky130_fd_sc_hd__dlrtn base (
        .Q(Q),
        .RESET_B(RESET_B),
        .D(D_ff),
        .GATE_N(GATE_N)
    );

endmodule