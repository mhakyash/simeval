module top_module(
    input clk,
    input reset,      // Synchronous active-high reset
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [3:0] counter_out,
    output [31:0] final_out
);

    // Adder-Subtractor module
    wire [31:0] adder_out;
    wire [31:0] b_inverted;
    wire [31:0] sub_inverted;

    assign b_inverted = (sub) ? ~b : b;
    assign sub_inverted = (sub) ? 1 : 0;

    ripple_adder adder1(
        .a(a[15:0]),
        .b(b_inverted[15:0]),
        .cin(sub_inverted),
        .sum(adder_out[15:0])
    );

    ripple_adder adder2(
        .a(a[31:16]),
        .b(b_inverted[31:16]),
        .cin(adder1.cout),
        .sum(adder_out[31:16])
    );

    // 4-bit binary counter using state machine
    reg [3:0] counter;
    reg [1:0] state;

    always @(posedge clk) begin
        if (reset) begin
            counter <= 0;
            state <= 2'b00;
        end else begin
            case (state)
                2'b00: begin
                    counter <= 4'b0000;
                    state <= 2'b01;
                end
                2'b01: begin
                    counter <= counter + 1;
                    if (counter == 4'b1111) begin
                        state <= 2'b10;
                    end
                end
                2'b10: begin
                    counter <= 4'b0000;
                    state <= 2'b01;
                end
            endcase
        end
    end

    assign counter_out = counter;

    // Bitwise AND module
    wire [31:0] and_out;

    assign and_out = adder_out & counter;

    // Final output
    assign final_out = and_out;

endmodule

// Ripple carry adder module
module ripple_adder(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
);

    wire [15:0] sum1;
    wire [15:0] sum2;

    assign sum1 = a ^ b;
    assign sum2 = sum1 ^ cin;

    assign sum = sum2;
    assign cout = (sum1 & cin) | (a & b);

endmodule