module stratixv_read_fifo (
                           datain,
                           wclk,
                           we,
                           rclk,
                           re,
                           areset,
                           plus2,
                           dataout
                          );

    parameter use_half_rate_read = "false";
    parameter sim_wclk_pre_delay = 0;

    reg [1:0] fifo [7:0]; // 8-entry FIFO
    reg [2:0] head = 0;
    reg [2:0] tail = 0;
    reg [2:0] count = 0;

    input [1:0] datain; 
    input wclk;
    input we;
    input rclk;
    input re;
    input areset;
    input plus2;

    output [3:0]dataout;

    always @(posedge wclk) begin
        if (we) begin
            fifo[head] <= datain;
            head <= (head == 7) ? 0 : head + 1;
            count <= count + 1;
        end
    end

    always @(posedge rclk) begin
        if (re) begin
            if (count > 0) begin
                dataout <= (plus2) ? fifo[tail] + 2 : fifo[tail];
                tail <= (tail == 7) ? 0 : tail + 1;
                count <= count - 1;
            end
        end
    end

    always @(posedge areset) begin
        if (areset) begin
            head <= 0;
            tail <= 0;
            count <= 0;
        end
    end

endmodule