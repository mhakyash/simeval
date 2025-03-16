module cycloneii_mac_data_reg (
    input clk,
    input [17:0] data,
    input ena,
    input aclr,
    output reg [17:0] dataout
);

    // Internal signals
    reg [17:0] data_reg;
    reg [17:0] dataout_tmp;
    reg d_viol;
    reg ena_viol;
    reg clk_last_value;

    // Timing constraints
    parameter t_setup = 1;
    parameter t_hold = 1;

    // Setup and hold checks
    assign d_viol = !$setuphold(ena && clk, data, t_setup, t_hold);
    assign ena_viol = !$setuphold(!aclr && clk, ena, t_setup, t_hold);

    // Register logic
    always @(posedge clk or negedge aclr) begin
        if (!aclr) begin
            data_reg <= 0;
            dataout_tmp <= 0;
        end else if (ena && !d_viol) begin
            data_reg <= data;
        end
    end

    // Output logic
    always @(posedge clk or negedge aclr) begin
        if (!aclr) begin
            dataout <= 0;
        end else if (ena && !ena_viol) begin
            dataout_tmp <= data_reg;
        end
    end

    // Assign output
    assign dataout = dataout_tmp;

endmodule