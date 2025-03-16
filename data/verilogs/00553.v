module data_buffer #(parameter DEPTH=8, parameter L=3, parameter dat_width=8)(
    input CLK, // clock
    input Rst, // reset
    input Wren, // write enable
    input Rden, // read enable
    input [L-1:0] adr_wr_i, // write address
    input [L-1:0] adr_rd_i, // read address
    input Wrclk, // write clock
    input [dat_width-1:0] Datain, // input data
    output [dat_width-1:0] Dataout, // output data
    output Full, // full signal
    output Empty // empty signal
);

    reg [dat_width-1:0] data_ram [0:DEPTH-1]; // data buffer
    
    // READ_DATA sub-module
    always @ (posedge CLK or posedge Rst) begin : READ_DATA
        if (Rst || !Rden) begin
            Dataout <= 0;
        end else if (Rden) begin
            Dataout <= data_ram[adr_rd_i];
        end 
    end
    
    // STATUS_COUNTER sub-module
    reg [L-1:0] status_cnt; // status counter
    
    always @ (posedge CLK or posedge Rst) begin : STATUS_COUNTER
        // At Reset, the data structure is assumed empty.
        if (Rst) begin
            status_cnt <= 0;
        // If a Read command occurs, the Status Counter decreases by one.
        end else if (Rden && !(Wren) && (status_cnt != 0)) begin
            status_cnt <= status_cnt - 1;
        // If a Write command occurs:
        end else if (Wren && !(Rden) && (status_cnt != DEPTH)) begin
            // If the Data Structure is full, the Status Counter stays the same.
            if (status_cnt == (DEPTH-1)) begin
                status_cnt <= status_cnt;
            // Else, the Status Counter increases by one  
            end else begin
                status_cnt <= status_cnt + 1;
            /* If both a Read and a Write commands occur at the same time,
            the Status Counter increases and decreases by one, so no action is
            required. */
            end
        end
    end 
    
    // FULL_EMPTY sub-module
    always @ (posedge Wrclk or posedge Rst) begin : FULL_EMPTY
        if (Rst) begin
            Full <= 0;
            Empty <= 1;
        end else if (status_cnt == (DEPTH-1)) begin
            Full <= 1;
            Empty <= 0;
        end else if (status_cnt == 0) begin
            Full <= 0;
            Empty <= 1;
        end else begin
            Full <= 0;
            Empty <= 0;
        end
    end
    
    // Ram instantiation, The ram is used as a data buffer.
    ram #(
        .mem_size(DEPTH),
        .adr_width(L),
        .dat_width(dat_width)
    ) RAM(
        .dat_i(Datain), 
        .dat_o(data_ram[adr_rd_i]), 
        .adr_wr_i(adr_wr_i), 
        .adr_rd_i(adr_rd_i), 
        .we_i(Wren), 
        .rde_i(Rden), 
        .clk(CLK)
    );
    
endmodule