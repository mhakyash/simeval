module counter(clk, rst, up_down, enable, count);

    input clk;
    input rst;
    input up_down;
    input enable;
    output reg [3:0] count;

    always @(posedge clk) begin
        if (rst) begin
            count <= 4'b0;
        end
        else if (enable) begin
            if (up_down) begin
                count <= count + 1;
            end
            else begin
                count <= count - 1;
            end
        end
    end

endmodule