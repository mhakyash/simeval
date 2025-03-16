module VGA_NIOS_CTRL (
    input  wire        iCLK,      //                   clk.clk
    output wire [9:0]  VGA_R,     // avalon_slave_0_export.export
    output wire [9:0]  VGA_G,     //                      .export
    output wire [9:0]  VGA_B,     //                      .export
    output wire        VGA_HS,    //                      .export
    output wire        VGA_VS,    //                      .export
    output wire        VGA_SYNC,  //                      .export
    output wire        VGA_BLANK, //                      .export
    output wire        VGA_CLK,   //                      .export
    input  wire        iCLK_25,   //                      .export
    output wire [15:0] oDATA,     //        avalon_slave_0.readdata
    input  wire [15:0] iDATA,     //                      .writedata
    input  wire [18:0] iADDR,     //                      .address
    input  wire        iWR,       //                      .write
    input  wire        iRD,       //                      .read
    input  wire        iCS,       //                      .chipselect
    input  wire        iRST_N     //               reset_n.reset_n
);

reg [17:0] addr;
reg [15:0] ram [0:307199];
wire [15:0] data = (iRD && !iWR) ? ram[addr] : 16'hzzzz;
assign oDATA = data;

integer row = 0;
integer col = 0;
reg [1:0] color = 0;
reg [1:0] color_next = 0;
reg [15:0] pixel_data = 0;
reg pixel_data_valid = 0;
reg [9:0] r_out = 0;
reg [9:0] g_out = 0;
reg [9:0] b_out = 0;
reg vsync = 0;
reg hsync = 0;
reg blank = 0;
wire clk25 = iCLK_25;

always @(posedge iCLK) begin
    if (iRST_N == 0) begin
        addr <= 0;
        row <= 0;
        col <= 0;
        color <= 0;
        color_next <= 0;
        pixel_data <= 0;
        pixel_data_valid <= 0;
        r_out <= 0;
        g_out <= 0;
        b_out <= 0;
        vsync <= 0;
        hsync <= 0;
        blank <= 0;
    end else begin
        if (iWR) begin
            ram[iADDR] <= iDATA;
        end else if (iRD) begin
            addr <= iADDR;
        end

        if (pixel_data_valid) begin
            if (col == 799) begin
                col <= 0;
                if (row == 524) begin
                    row <= 0;
                    vsync <= 1;
                end else if (row == 525) begin
                    vsync <= 0;
                    hsync <= 1;
                end else if (row == 624) begin
                    hsync <= 0;
                    blank <= 1;
                end else if (row == 625) begin
                    blank <= 0;
                    row <= row + 1;
                end else begin
                    row <= row + 1;
                end
            end else begin
                col <= col + 1;
            end
        end

        if (col == 0 && row == 0) begin
            color <= 0;
        end else if (col == 0) begin
            color <= color_next;
        end

        if (col == 799 && row == 524) begin
            color_next <= 0;
        end else if (col == 799) begin
            color_next <= color + 1;
        end

        if (col == 0 && row == 0) begin
            pixel_data <= 0;
            pixel_data_valid <= 0;
        end else if (col == 0) begin
            pixel_data <= data;
            pixel_data_valid <= 1;
        end else if (pixel_data_valid && color == 2'b00) begin
            r_out <= pixel_data[9:0];
            g_out <= pixel_data[9:0];
            b_out <= pixel_data[9:0];
        end else if (pixel_data_valid && color == 2'b01) begin
            g_out <= pixel_data[9:0];
            b_out <= pixel_data[9:0];
        end else if (pixel_data_valid && color == 2'b10) begin
            b_out <= pixel_data[9:0];
        end
    end
end

assign VGA_R = {r_out, 2'b00};
assign VGA_G = {g_out, 2'b00};
assign VGA_B = {b_out, 2'b00};
assign VGA_HS = hsync;
assign VGA_VS = vsync;
assign VGA_SYNC = hsync & vsync;
assign VGA_BLANK = blank;
assign VGA_CLK = clk25;

endmodule