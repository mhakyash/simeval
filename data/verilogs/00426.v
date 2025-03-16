module niosii_nios2_gen2_0_cpu_nios2_oci_dbrk (
    input [31:0] E_st_data,
    input [31:0] av_ld_data_aligned_filtered,
    input clk,
    input [22:0] d_address,
    input d_read,
    input d_waitrequest,
    input d_write,
    input debugack,
    input reset_n,
    output [22:0] cpu_d_address,
    output cpu_d_read,
    output [31:0] cpu_d_readdata,
    output cpu_d_wait,
    output cpu_d_write,
    output [31:0] cpu_d_writedata,
    output dbrk_break,
    output dbrk_goto0,
    output dbrk_goto1,
    output dbrk_traceme,
    output dbrk_traceoff,
    output dbrk_traceon,
    output dbrk_trigout
);

    reg [31:0] dbrk_data;
    reg dbrk_break, dbrk_break_pulse, dbrk_goto0, dbrk_goto1, dbrk_traceme, dbrk_traceoff, dbrk_traceon, dbrk_trigout;

    assign cpu_d_address = d_address;
    assign cpu_d_readdata = av_ld_data_aligned_filtered;
    assign cpu_d_read = d_read;
    assign cpu_d_writedata = E_st_data;
    assign cpu_d_write = d_write;
    assign cpu_d_wait = d_waitrequest;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            dbrk_break <= 0;
            dbrk_break_pulse <= 0;
            dbrk_goto0 <= 0;
            dbrk_goto1 <= 0;
            dbrk_traceme <= 0;
            dbrk_traceoff <= 0;
            dbrk_traceon <= 0;
            dbrk_trigout <= 0;
        end else begin
            dbrk_break_pulse <= dbrk_break ? ~debugack : dbrk_break_pulse;
            dbrk_break <= dbrk_break_pulse;
        end
    end

    assign dbrk_data = cpu_d_write ? cpu_d_writedata : cpu_d_readdata;

    assign dbrk_goto0 = 0;
    assign dbrk_goto1 = 0;
    assign dbrk_traceme = 0;
    assign dbrk_traceoff = 0;
    assign dbrk_traceon = 0;
    assign dbrk_trigout = 0;

    assign dbrk_break_pulse = dbrk_goto0 | dbrk_goto1 | dbrk_traceme;

endmodule