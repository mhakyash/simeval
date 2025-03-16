module memory (
    input [14:0] address,
    input [15:0] data_in,
    output [15:0] data_out,
    input clock,
    input write_en
);

reg [15:0] memory [0:32767];

always @(posedge clock) begin
    if (write_en) begin
        memory[address] <= data_in;
    end
    data_out <= memory[address];
end

endmodule