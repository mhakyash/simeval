module barrel_shifter (
    input [7:0] d_in,
    input [2:0] shift_amount,
    input clk,
    output [7:0] d_out
);

    reg [7:0] shifted_d_in;

    always @ (posedge clk) begin
        case (shift_amount)
            3'b000: shifted_d_in <= d_in;
            3'b001: shifted_d_in <= {d_in[6:0], 1'b0};
            3'b010: shifted_d_in <= {d_in[5:0], 2'b00};
            3'b011: shifted_d_in <= {d_in[4:0], 3'b000};
            3'b100: shifted_d_in <= {d_in[3:0], 4'b0000};
            3'b101: shifted_d_in <= {d_in[2:0], 5'b00000};
            3'b110: shifted_d_in <= {d_in[1:0], 6'b000000};
            3'b111: shifted_d_in <= {d_in[0], 7'b0000000};
        endcase
    end

    assign d_out = shifted_d_in;

endmodule