module sram (
    input clock,
    input [71:0] data,
    input [9:0] rdaddress,
    input rden,
    input [9:0] wraddress,
    input wren,
    output [71:0] q
);

    reg [71:0] memory [0:1023];
    wire [71:0] read_data;

    always @(posedge clock) begin
        if (wren) begin
            memory[wraddress] <= data;
        end
    end

    assign read_data = memory[rdaddress];

    assign q = (rden) ? read_data : 72'b0;

endmodule