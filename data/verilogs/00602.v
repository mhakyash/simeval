module barrel_shifter (
    input [3:0] data_in,
    input [1:0] shift_amt,
    input shift_dir,
    input enable,
    output reg [3:0] data_out
);

    always @ (data_in or shift_amt or shift_dir or enable) begin
        if (enable) begin
            case (shift_dir)
                1'b0: data_out <= data_in << shift_amt;
                1'b1: data_out <= data_in >> shift_amt;
            endcase
        end
        else begin
            data_out <= data_in;
        end
    end

endmodule