module memory_module(
    input clk,
    input wr_en,
    input rd_en,
    input [12:0] addr,
    input [15:0] data_in,
    output [15:0] data_out
);

    reg [15:0] memory [0:8191];
    wire [15:0] data_out;

    always @(posedge clk) begin
        if (wr_en) begin
            memory[addr] <= data_in;
        end
        if (rd_en) begin
            data_out <= memory[addr];
        end
    end

endmodule