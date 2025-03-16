module top_module (
    input [3:0] a,
    input [3:0] b,
    input mode,
    input [15:0] data_in,
    output reg [31:0] final_out
);

    wire [3:0] add_sub_out;
    wire [7:0] comp_concat_out;
    wire [31:0] func_out;

    add_sub add_sub_inst (
        .a(a),
        .b(b),
        .mode(mode),
        .out(add_sub_out)
    );

    complement_concat comp_concat_inst (
        .data_in(data_in),
        .out(comp_concat_out)
    );

    functional_module func_inst (
        .in1(add_sub_out),
        .in2(comp_concat_out),
        .mode(mode),
        .out(func_out)
    );

    always @* begin
        final_out = func_out;
    end

endmodule

module add_sub (
    input [3:0] a,
    input [3:0] b,
    input mode,
    output reg [3:0] out
);

    always @* begin
        if (mode == 1) begin
            out = a + b;
        end else begin
            out = a - b;
        end
    end

endmodule

module complement_concat (
    input [15:0] data_in,
    output reg [7:0] out
);

    assign out = ~data_in[15:8] & data_in[7:0];

endmodule

module functional_module (
    input [3:0] in1,
    input [7:0] in2,
    input mode,
    output reg [31:0] out
);

    always @* begin
        if (mode == 1) begin
            out = in1 + in2;
        end else begin
            out = in1 | in2;
        end
    end

endmodule