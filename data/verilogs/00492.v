module d_ff_reset (
    input D,
    input RESET_B,
    input VPWR,
    input VGND,
    input VPB,
    input VNB,
    output Q
);

    wire D_valid;
    wire RESET_B_valid;
    wire VPWR_valid;
    wire VGND_valid;
    wire VPB_valid;
    wire VNB_valid;
    wire CLK_N;

    assign D_valid = (VPWR >= 1.08 && VPWR <= 1.32) && (VGND >= -0.3 && VGND <= 0.3) && (VPB >= 0.6 && VPB <= 1.2) && (VNB >= -1.2 && VNB <= -0.6);
    assign RESET_B_valid = (VPWR >= 1.08 && VPWR <= 1.32) && (VGND >= -0.3 && VGND <= 0.3) && (VPB >= 0.6 && VPB <= 1.2) && (VNB >= -1.2 && VNB <= -0.6);
    assign VPWR_valid = (VPWR >= 1.08 && VPWR <= 1.32) && (VGND >= -0.3 && VGND <= 0.3);
    assign VGND_valid = (VPWR >= 1.08 && VPWR <= 1.32) && (VGND >= -0.3 && VGND <= 0.3);
    assign VPB_valid = (VPB >= 0.6 && VPB <= 1.2) && (VNB >= -1.2 && VNB <= -0.6);
    assign VNB_valid = (VPB >= 0.6 && VPB <= 1.2) && (VNB >= -1.2 && VNB <= -0.6);

    reg Q_reg;

    always @(posedge CLK_N) begin
        if (RESET_B_valid && !RESET_B) begin
            Q_reg <= 1'b0;
        end else if (D_valid) begin
            Q_reg <= D;
        end
    end

    assign Q = Q_reg;

endmodule