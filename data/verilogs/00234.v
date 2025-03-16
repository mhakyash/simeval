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

reg [3:0] count;
reg [9:0] sum;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        count <= 0;
        sum <= 0;
        valid_b <= 0;
        data_out <= 0;
    end
    else begin
        if (valid_a && ready_b) begin
            sum <= sum + data_in;
            count <= count + 1;
            if (count == 8) begin
                data_out <= sum;
                valid_b <= 1;
                count <= 0;
                sum <= 0;
            end
        end
        else begin
            valid_b <= 0;
        end
    end
end

assign ready_a = !valid_b;

endmodule