module inv_clk (
    output clkout,
    input clkin
);
 
assign clkout = ~clkin;
 
endmodule