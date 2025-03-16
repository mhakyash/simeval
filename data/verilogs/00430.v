module cycloneive_n_cntr   ( clk,
                            reset,
                            enable,
                            cout,
                            modulus);

    // INPUT PORTS
    input clk;
    input reset;
    input enable;
    input [31:0] modulus;

    // OUTPUT PORTS
    output cout;

    // INTERNAL VARIABLES AND NETS
    integer count;
    reg tmp_cout;
    reg first_rising_edge;
    reg clk_last_value;
    reg cout_tmp;
    reg enable_last_value;

    initial
    begin
        count = 1;
        first_rising_edge = 1;
        clk_last_value = 0;
        enable_last_value = 0;
    end

    always @(reset or clk or enable)
    begin
        if (reset)
        begin
            count = 1;
            tmp_cout = 0;
            first_rising_edge = 1;
            enable_last_value = 0;
        end
        else begin
            if (enable == 1 && enable_last_value !== enable) // enable rising edge
            begin
                first_rising_edge = 1;
            end
            
            if (clk == 1 && clk_last_value !== clk && first_rising_edge)
            begin
                first_rising_edge = 0;
                tmp_cout = clk;
            end
            else if (first_rising_edge == 0 && enable == 1)
            begin
                if (count < modulus)
                    count = count + 1;
                else
                begin
                    count = 1;
                    tmp_cout = ~tmp_cout;
                end
            end
        end
        clk_last_value = clk;
        enable_last_value = enable;

    end

    assign cout = tmp_cout;

endmodule