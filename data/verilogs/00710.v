module decoder_2to4_with_enable (
    input A,
    input B,
    input EN,
    output reg [3:0] Y
);

    always @ (A or B or EN) begin
        if (EN) begin
            case ({A,B})
                2'b00: Y <= 4'b0001;
                2'b01: Y <= 4'b0010;
                2'b10: Y <= 4'b0100;
                2'b11: Y <= 4'b1000;
            endcase
        end
        else begin
            Y <= 4'b0000;
        end
    end

endmodule