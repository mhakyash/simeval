module my_module(input clk, input [159:0] din, output [159:0] dout);

    my_RAMB18E1
        #(
            .LOC("RAMB18_X2Y120"),
            .DOA_REG(1'b1),
            .DOB_REG(1'b0),
            .INIT_A(18'b001000001000010101),
            .INIT_B(18'b001111100001101011),
            .IS_CLKARDCLK_INVERTED(1'b0),
            .IS_CLKBWRCLK_INVERTED(1'b0),
            .IS_ENARDEN_INVERTED(1'b0),
            .IS_ENBWREN_INVERTED(1'b0),
            .IS_RSTRAMARSTRAM_INVERTED(1'b1),
            .IS_RSTRAMB_INVERTED(1'b1),
            .IS_RSTREGARSTREG_INVERTED(1'b0),
            .IS_RSTREGB_INVERTED(1'b1),
            .RDADDRCHANGEA("FALSE"),
            .RDADDRCHANGEB("FALSE"),
            .READ_WIDTH_A(4),
            .READ_WIDTH_B(4),
            .WRITE_WIDTH_A(18),
            .WRITE_WIDTH_B(1),
            .RSTREG_PRIORITY_A("RSTREG"),
            .RSTREG_PRIORITY_B("RSTREG"),
            .SRVAL_A(18'b110111110110100101),
            .SRVAL_B(18'b000001011100001111),
            .WRITE_MODE_A("WRITE_FIRST"),
            .WRITE_MODE_B("WRITE_FIRST")
        )
        my_RAMB18E1_inst (
            .clk(clk),
            .din(din[0 +: 24]),
            .dout(dout[0 +: 8])
        );

endmodule