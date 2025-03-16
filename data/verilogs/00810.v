module accu(
    input               clk         ,   
    input               rst_n       ,
    input       [7:0]   data_in     ,
    input               valid_a     ,
    input               ready_b     ,
 
    output              ready_a     ,
    output  reg         valid_b     ,
    output  reg [9:0]   data_out
);

reg [7:0] shift_reg [0:7];
reg [9:0] accu_reg;

integer i;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        for (i = 0; i < 8; i = i + 1) begin
            shift_reg[i] <= 8'b0;
        end
        accu_reg <= 10'b0;
        valid_b <= 1'b0;
    end
    else begin
        for (i = 7; i > 0; i = i - 1) begin
            shift_reg[i] <= shift_reg[i-1];
        end
        shift_reg[0] <= data_in;
        accu_reg <= accu_reg + data_in;
        if (valid_a && ready_b) begin
            valid_b <= 1'b1;
            data_out <= accu_reg;
        end
        else begin
            valid_b <= 1'b0;
        end
    end
end

assign ready_a = ~valid_b;

endmodule