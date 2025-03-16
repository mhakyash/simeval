module shift_register (
    input clk,
    input load,
    input clear,
    input [7:0] data_in,
    output reg [7:0] data_out
);

    always @(posedge clk) begin
        if (clear) begin
            data_out <= 8'b0;
        end else if (load) begin
            data_out <= data_in;
        end else begin
            data_out <= {data_out[6:0], data_out[7]};
        end
    end

endmodule