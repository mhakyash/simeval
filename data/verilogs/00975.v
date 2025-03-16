module ADC_INTERFACE(
    input clk,
    input reset_n,
    input [11:0] adc_data,
    output reg valid,
    output reg [15:0] data_out
);

always @(posedge clk, negedge reset_n) begin
    if (~reset_n) begin
        valid <= 0;
        data_out <= 0;
    end else begin
        if (adc_data != 0) begin
            valid <= 1;
            data_out <= {4'b0, adc_data};
        end
    end
end

endmodule