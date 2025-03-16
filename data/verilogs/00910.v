module binary_counter(
    input clk,
    input rst,
    output reg [3:0] count
);

always @(posedge clk, posedge rst) begin
    if (rst) begin
        count <= 4'b0;
    end
    else begin
        if (count == 4'b1111) begin
            count <= 4'b0;
        end
        else begin
            count <= count + 1;
        end
    end
end

endmodule