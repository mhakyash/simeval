module bitwise_rotation(
    input [25:0] Data_i,
    input select_i,
    input bit_shift_i,
    input clk,
    output reg [25:0] Data_o
);

reg [25:0] temp;

always @(posedge clk) begin
    if (select_i == 0) begin
        temp[25:1] = Data_i[24:0];
        temp[0] = Data_i[25];
    end else begin
        temp[24:0] = Data_i[25:1];
        temp[25] = Data_i[0];
    end

    if (bit_shift_i == 0) begin
        Data_o <= temp;
    end else begin
        if (select_i == 0) begin
            Data_o[25] <= temp[0];
            Data_o[24:0] <= temp[25:1];
        end else begin
            Data_o[0] <= temp[25];
            Data_o[25:1] <= temp[24:0];
        end
    end
end

endmodule