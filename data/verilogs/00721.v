module binary_counter (
    input clk,
    input rst,
    input en,
    input ld,
    input [3:0] load_data,
    output reg [3:0] count
);

    always @(posedge clk) begin
        if (rst) begin
            count <= 4'b0000;
        end else if (en) begin
            if (ld) begin
                count <= load_data;
            end else begin
                count <= count + 1;
            end
        end
    end

endmodule