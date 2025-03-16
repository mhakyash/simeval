module priority_encoder (
    input A,
    input B,
    input C,
    input D,
    output reg [1:0] X,
    output reg Y
);

always @ (A or B or C or D) begin
    case ({A, B, C, D})
        4'b0001: begin
            X = 2'b00;
            Y = 1'b1;
        end
        4'b0010: begin
            X = 2'b01;
            Y = 1'b1;
        end
        4'b0100: begin
            X = 2'b10;
            Y = 1'b1;
        end
        4'b1000: begin
            X = 2'b11;
            Y = 1'b1;
        end
        default: begin
            X = 2'b00;
            Y = 1'b0;
        end
    endcase
end

endmodule