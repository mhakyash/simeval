module sky130_fd_sc_hs__fa (input A, input B, input CIN, input VPWR, input VGND, output COUT, output SUM);

    reg temp_COUT; // temporary variable to store the value of COUT
    reg temp_SUM; // temporary variable to store the value of SUM

    always @(*) begin
        if((A == 1'b0 || A == 1'b1) && (B == 1'b0 || B == 1'b1) && (CIN == 1'b0 || CIN == 1'b1)) begin
            temp_SUM = A ^ B ^ CIN;
            temp_COUT = (A & B) | (B & CIN) | (CIN & A);
        end
        else begin
            temp_SUM = 1'bx;
            temp_COUT = 1'bx;
        end
    end

    assign SUM = temp_SUM;
    assign COUT = temp_COUT;

endmodule