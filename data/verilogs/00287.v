module bcd_code (
    input [3:0] A,
    output reg [3:0] OUT1,
    output reg [3:0] OUT2
);

always @ (A) begin
    case (A)
        4'd0: begin
            OUT1 = 4'b0;
            OUT2 = 4'b0;
        end
        4'd1: begin
            OUT1 = 4'b0;
            OUT2 = 4'b1;
        end
        4'd2: begin
            OUT1 = 4'b0;
            OUT2 = 4'b10;
        end
        4'd3: begin
            OUT1 = 4'b0;
            OUT2 = 4'b11;
        end
        4'd4: begin
            OUT1 = 4'b1;
            OUT2 = 4'b0;
        end
        4'd5: begin
            OUT1 = 4'b1;
            OUT2 = 4'b1;
        end
        4'd6: begin
            OUT1 = 4'b1;
            OUT2 = 4'b10;
        end
        4'd7: begin
            OUT1 = 4'b1;
            OUT2 = 4'b11;
        end
        4'd8: begin
            OUT1 = 4'b10;
            OUT2 = 4'b0;
        end
        4'd9: begin
            OUT1 = 4'b10;
            OUT2 = 4'b1;
        end
        default: begin
            OUT1 = 4'b0;
            OUT2 = 4'b0;
        end
    endcase
end

endmodule