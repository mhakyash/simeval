module counter_4bit(
    input clk,
    input rst,
    output reg [3:0] count,
    output reg max_reached
);

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            count <= 4'b0000;
            max_reached <= 0;
        end
        else begin
            if(count == 4'b1111) begin
                count <= 4'b0000;
                max_reached <= 1;
            end
            else begin
                count <= count + 1;
                max_reached <= 0;
            end
        end
    end

endmodule