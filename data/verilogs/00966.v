module crc_block (
    input clk,
    input shiftnld,
    input ldsrc,
    output crcerror,
    output regout
);

parameter oscillator_divider = 1;
parameter lpm_type = "stratixgx_crcblock";

wire [31:0] crc_out;
wire [31:0] crc_in;

assign crcerror = 1'b0;
assign regout = crc_out;

stratixgx_crcblock crc_inst (
    .clk(clk),
    .shiftnld(shiftnld),
    .ldsrc(ldsrc),
    .crcerror(crcerror),
    .regout(crc_out)
);

always @(posedge clk) begin
    if (shiftnld) begin
        crc_in <= {crc_in[30:0], ldsrc};
    end
end

endmodule