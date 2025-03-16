module adder (
    input clk,
    input [1:0] a,
    input [1:0] b,
    input cin,
    output [1:0] sum,
    output cout
);

    reg [2:0] temp_sum;
    wire [1:0] temp_cout;

    always @(posedge clk) begin
        temp_sum <= {1'b0, a} + {1'b0, b} + {1'b0, cin};
        temp_cout <= temp_sum[2];
    end

    assign sum = temp_sum[1:0];
    assign cout = temp_cout;

endmodule