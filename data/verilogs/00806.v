module priority_encoder (
    input [7:0] in,
    output reg [2:0] out
);
    always @(*) begin
        case (in)
            8'b1_000_000: out = 3'b001;
            8'b01_000_000: out = 3'b010;
            8'b001_000_000: out = 3'b011;
            8'b0001_000_000: out = 3'b100;
            8'b0000_100_000: out = 3'b101;
            8'b0000_010_000: out = 3'b110;
            8'b0000_001_000: out = 3'b111;
            default: out = 3'b000;
        endcase
    end
endmodule

module full_adder (
    input a, b, cin,
    output sum, cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule

module multiplier (
    input [2:0] a, b,
    output reg [5:0] product
);
    integer i, j;
    reg [5:0] temp_product;

    always @(*) begin
        temp_product = 6'b0;
        for (i = 0; i < 3; i = i + 1) begin
            if (a[i]) begin
                for (j = 0; j < 3; j = j + 1) begin
                    temp_product[i+j] = temp_product[i+j] ^ (b[j] & a[i]);
                end
            end
        end
        product = temp_product;
    end
endmodule

module functional_module (
    input [2:0] a, b, priority_out,
    output reg [5:0] result
);
    reg [5:0] temp_result;

    always @(*) begin
        temp_result = (a * b) + (priority_out * a * b);
        result = temp_result;
    end
endmodule

module top_module (
    input [2:0] a, b,
    output reg [5:0] product
);
    wire [2:0] priority_out;
    wire [5:0] multiplier_out, functional_out;

    priority_encoder pe (
        .in({a[2], b[2], a[1], b[1], a[0], b[0], 1'b0, 1'b0}),
        .out(priority_out)
    );

    multiplier mul (
        .a(a),
        .b(b),
        .product(multiplier_out)
    );

    functional_module fm (
        .a(a),
        .b(b),
        .priority_out(priority_out),
        .result(functional_out)
    );

    always @(*) begin
        product = multiplier_out + functional_out;
    end
endmodule