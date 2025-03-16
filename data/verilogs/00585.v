module decoder (
    input enable,
    input [1:0] select,
    output [15:0] out
);

    assign out = (enable) ? ~(16'b1 << select) : 16'b1111_1111_1111_1111;

endmodule