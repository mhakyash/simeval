module adder_8bit (
    input [7:0] A,
    input [7:0] B,
    output [7:0] sum
);

    reg [7:0] temp_sum;

    always @ (A, B) begin
        temp_sum = A + B;
    end

    assign sum = temp_sum;

endmodule