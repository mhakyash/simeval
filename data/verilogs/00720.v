module mag_comparator_4bit (
    input [3:0] A,
    input [3:0] B,
    output LT
);

reg [3:0] A_reg;
reg [3:0] B_reg;
reg [1:0] stage;

always @(posedge clk) begin
    case(stage)
        0: begin
            A_reg <= A;
            B_reg <= B;
            stage <= 1;
        end
        1: begin
            if(A_reg > B_reg) begin
                LT <= 0;
            end else begin
                LT <= 1;
            end
            stage <= 0;
        end
    endcase
end

endmodule