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

reg [1:0] count;
reg [9:0] acc;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        count <= 2'b0;
        acc <= 10'b0;
        valid_b <= 1'b0;
    end else begin
        if (valid_a) begin
            case (count)
                2'b00: begin
                    acc <= acc + data_in;
                    count <= 2'b01;
                end
                2'b01: begin
                    acc <= acc + data_in;
                    count <= 2'b10;
                end
                2'b10: begin
                    acc <= acc + data_in;
                    count <= 2'b11;
                end
                2'b11: begin
                    acc <= acc + data_in;
                    count <= 2'b00;
                    valid_b <= 1'b1;
                end
            endcase
        end
    end
end

assign ready_a = ~valid_b & ready_b;
assign data_out = valid_b ? acc : 10'b0;

endmodule