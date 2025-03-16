module tcam(
    input clk,
    input [31:0] cmp_data_mask,
    input [31:0] cmp_din,
    input [31:0] data_mask,
    input [31:0] din,
    input we,
    input [10:0] wr_addr,
    output busy,
    output match,
    output [2047:0] match_addr
);

    wire en = 1'b1;
    wire multiple_match;
    wire read_warning;
    wire single_match;
    
    CAM_V5_1 #(
        .c_addr_type(2),
        .c_cmp_data_mask_width(32),
        .c_cmp_din_width(32),
        .c_data_mask_width(32),
        .c_depth(2048),
        .c_din_width(32),
        .c_enable_rlocs(0),
        .c_has_cmp_data_mask(1),
        .c_has_cmp_din(1),
        .c_has_data_mask(1),
        .c_has_en(0),
        .c_has_multiple_match(0),
        .c_has_read_warning(0),
        .c_has_single_match(0),
        .c_has_we(1),
        .c_has_wr_addr(1),
        .c_match_addr_width(2048),
        .c_match_resolution_type(0),
        .c_mem_init(0),
        .c_mem_init_file("tcam_bl.mif"),
        .c_mem_type(0),
        .c_read_cycles(1),
        .c_reg_outputs(0),
        .c_ternary_mode(2),
        .c_width(32),
        .c_wr_addr_width(11)
    ) tcam_inst (
        .CLK(clk),
        .CMP_DATA_MASK(cmp_data_mask),
        .CMP_DIN(cmp_din),
        .DATA_MASK(data_mask),
        .DIN(din),
        .WE(we),
        .WR_ADDR(wr_addr),
        .BUSY(busy),
        .MATCH(match),
        .MATCH_ADDR(match_addr),
        .EN(en),
        .MULTIPLE_MATCH(multiple_match),
        .READ_WARNING(read_warning),
        .SINGLE_MATCH(single_match)
    );
    
endmodule