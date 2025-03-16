module binary_to_bcd_converter (
    input [3:0] BIN,
    output [3:0] BCD_HIGH,
    output [3:0] BCD_LOW
);
    reg [3:0] stage1_out;
    reg [3:0] stage2_out;
    reg [3:0] stage3_out;

    // Stage 1
    always @* begin
        case(BIN)
            4'b0000: stage1_out = 4'b0000;
            4'b0001: stage1_out = 4'b0000;
            4'b0010: stage1_out = 4'b0000;
            4'b0011: stage1_out = 4'b0001;
            4'b0100: stage1_out = 4'b0000;
            4'b0101: stage1_out = 4'b0001;
            4'b0110: stage1_out = 4'b0001;
            4'b0111: stage1_out = 4'b0010;
            4'b1000: stage1_out = 4'b0000;
            4'b1001: stage1_out = 4'b0010;
            4'b1010: stage1_out = 4'b0010;
            4'b1011: stage1_out = 4'b0011;
            4'b1100: stage1_out = 4'b0001;
            4'b1101: stage1_out = 4'b0011;
            4'b1110: stage1_out = 4'b0011;
            4'b1111: stage1_out = 4'b0100;
        endcase
    end

    // Stage 2
    always @* begin
        case(stage1_out)
            4'b0000: stage2_out = 4'b0000;
            4'b0001: stage2_out = 4'b0001;
            4'b0010: stage2_out = 4'b0010;
            4'b0011: stage2_out = 4'b0011;
            4'b0100: stage2_out = 4'b0001;
            4'b0101: stage2_out = 4'b0010;
            4'b0110: stage2_out = 4'b0011;
            4'b0111: stage2_out = 4'b0100;
            4'b1000: stage2_out = 4'b0001;
            4'b1001: stage2_out = 4'b0010;
            4'b1010: stage2_out = 4'b0011;
            4'b1011: stage2_out = 4'b0100;
            4'b1100: stage2_out = 4'b0010;
            4'b1101: stage2_out = 4'b0100;
            4'b1110: stage2_out = 4'b0101;
            4'b1111: stage2_out = 4'b0110;
        endcase
    end

    // Stage 3
    always @* begin
        case(stage2_out)
            4'b0000: stage3_out = 4'b0000;
            4'b0001: stage3_out = 4'b0001;
            4'b0010: stage3_out = 4'b0010;
            4'b0011: stage3_out = 4'b0011;
            4'b0100: stage3_out = 4'b0100;
            4'b0101: stage3_out = 4'b0101;
            4'b0110: stage3_out = 4'b0110;
            4'b0111: stage3_out = 4'b0111;
            4'b1000: stage3_out = 4'b0001;
            4'b1001: stage3_out = 4'b0010;
            4'b1010: stage3_out = 4'b0011;
            4'b1011: stage3_out = 4'b0100;
            4'b1100: stage3_out = 4'b0101;
            4'b1101: stage3_out = 4'b0110;
            4'b1110: stage3_out = 4'b0111;
            4'b1111: stage3_out = 4'b1000;
        endcase
    end

    assign BCD_HIGH = stage3_out;
    assign BCD_LOW = stage2_out;

endmodule