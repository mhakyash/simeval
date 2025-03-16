module calculator(
    input clk,
    input rst,
    input [1:0] op,
    input [7:0] in1,
    input [7:0] in2,
    output reg [7:0] result,
    output reg overflow,
    output reg zero
);

always @ (posedge clk) begin
    if (rst) begin
        result <= 0;
        overflow <= 0;
        zero <= 0;
    end
    else begin
        case (op)
            2'b00: // addition
                begin
                    result <= in1 + in2;
                    overflow <= (result > 8'hFF);
                    zero <= (result == 0);
                end
            2'b01: // subtraction
                begin
                    result <= in1 - in2;
                    overflow <= (result < 0);
                    zero <= (result == 0);
                end
            2'b10: // multiplication
                begin
                    result <= in1 * in2;
                    overflow <= (result > 8'hFF);
                    zero <= (result == 0);
                end
            2'b11: // division
                begin
                    if (in2 == 0) begin
                        result <= 8'h00;
                        overflow <= 0;
                        zero <= 1;
                    end
                    else begin
                        result <= in1 / in2;
                        overflow <= (result > 8'hFF);
                        zero <= (result == 0);
                    end
                end
        endcase
    end
end

endmodule