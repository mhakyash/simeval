module  qsys_sdram_clock
    ( 
    address,
    areset,
    c0,
    clk,
    locked,
    phasedone,
    read,
    readdata,
    reset,
    write,
    writedata) /* synthesis synthesis_clearbox=1 */;
    input   [1:0]  address;
    input   areset;
    output   c0;
    input   clk;
    output   locked;
    output   phasedone;
    input   read;
    output   [31:0]  readdata;
    input   reset;
    input   write;
    input   [31:0]  writedata;

    wire  wire_stdsync2_dout;
    wire  [4:0]   wire_sd1_clk;
    wire  wire_sd1_locked;
    (* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=HIGH"} *)
    reg pfdena_reg;
    wire wire_pfdena_reg_ena;
    reg prev_reset;
    wire w_locked;
    wire w_pfdena;
    wire w_phasedone;
    wire w_pll_areset_in;
    wire w_reset;
    wire w_select_control;
    wire w_select_status;

    qsys_sdram_clock_stdsync_sv6 stdsync2
    ( 
        .clk(clk),
        .din(wire_sd1_locked),
        .dout(wire_stdsync2_dout),
        .reset_n((~ reset)));
    qsys_sdram_clock_altpll_l942 sd1
    ( 
        .areset((w_pll_areset_in | areset)),
        .clk(wire_sd1_clk),
        .inclk({{1{1'b0}}, clk}),
        .locked(wire_sd1_locked));

    // Implement missing signals
    assign wire_sd1_clk = {3'b000, sd1.clk};
    assign wire_sd1_locked = sd1.locked;

    always @ ( posedge clk or posedge reset ) begin
        if (reset == 1'b1) begin
            pfdena_reg <= {1{1'b1}};
            prev_reset <= 1'b0;
        end
        else begin
            if (wire_pfdena_reg_ena == 1'b1) begin
                pfdena_reg <= writedata[1];
            end
            prev_reset <= w_reset;
        end
    end

    assign wire_pfdena_reg_ena = (write & w_select_control);

    assign c0 = wire_sd1_clk[0];
    assign locked = wire_sd1_locked;
    assign phasedone = 1'b0;
    assign readdata = {{30{1'b0}}, (read & ((w_select_control & w_pfdena) | (w_select_status & w_phasedone))), (read & ((w_select_control & w_pll_areset_in) | (w_select_status & w_locked)))};
    assign w_locked = wire_stdsync2_dout;
    assign w_pfdena = pfdena_reg;
    assign w_phasedone = 1'b1;
    assign w_pll_areset_in = prev_reset;
    assign w_reset = ((write & w_select_control) & writedata[0]);
    assign w_select_control = ((~ address[1]) & address[0]);
    assign w_select_status = ((~ address[1]) & (~ address[0]));

endmodule