module alu(
    input I0,
    input I1,
    input I3,
    input CIN,
    input [3:0] ALU_MODE,
    output reg SUM,
    output reg COUT
);

always @* begin
    case (ALU_MODE)
        4'b0000: begin // ADD
            SUM = I0 ^ I1 ^ CIN;
            COUT = (I0 & I1) | (CIN & (I0 ^ I1));
        end
        4'b0001: begin // SUB
            SUM = I0 ^ I1 ^ CIN;
            COUT = (~I0 & I1) | (CIN & (~I0 ^ I1));
        end
        4'b0010: begin // ADDSUB
            if (I3) begin // ADD
                SUM = I0 ^ I1 ^ CIN;
                COUT = (I0 & I1) | (CIN & (I0 ^ I1));
            end
            else begin // SUB
                SUM = I0 ^ I1 ^ CIN;
                COUT = (~I0 & I1) | (CIN & (~I0 ^ I1));
            end
        end
        4'b0011: begin // NE
            SUM = ~(I0 ^ I1);
            COUT = 1'b1;
        end
        4'b0100: begin // GE
            SUM = ~(I0 ^ I1);
            COUT = (~I0 & I1) | (CIN & (~I0 ^ I1));
        end
        4'b0101: begin // LE
            SUM = ~(I0 ^ I1);
            COUT = (I0 & I1) | (CIN & (I0 | I1));
        end
        4'b0110: begin // CUP
            SUM = I0;
            COUT = 1'b0;
        end
        4'b0111: begin // CDN
            SUM = ~I0;
            COUT = 1'b1;
        end
        4'b1000: begin // CUPCDN
            if (I3) begin // CUP
                SUM = I0;
                COUT = 1'b0;
            end
            else begin // CDN
                SUM = ~I0;
                COUT = 1'b1;
            end
        end
        4'b1001: begin // MULT
            SUM = I0 & I1;
            COUT = I0 & I1;
        end
        default: begin // unsupported mode
            SUM = 1'b0;
            COUT = 1'b0;
        end
    endcase
end

endmodule