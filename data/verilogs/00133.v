module uart_rx(
    input clk,
    input rst_n,
    input [2:0] uart_ctl,
    input rs_rx,
    output reg [6:0] data_in,
    output reg data_sign
    );
    
    parameter bps9600_2  = 13'd2604;
    parameter bps19200_2 = 13'd1301;
    parameter bps38400_2 = 13'd650;
    parameter bps57600_2 = 13'd433;
    parameter bps115200_2 = 13'd217;
    parameter bps256000_2 = 13'd97;
    
    parameter IDLE = 2'b01;
    parameter TRAN = 2'b10;
    
    reg [1:0] state;
    reg bps_sel, sign_sel;
    reg [12:0] cnt;
    reg [4:0] tran_cnt;
    
    wire recv_comp;
    assign recv_comp = (tran_cnt == 17 && bps_sel);
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
        end else begin
            case (state)
                IDLE: state <= ~rs_rx ? TRAN : IDLE;
                TRAN: state <= recv_comp ? IDLE : TRAN;
                default: state <= IDLE;
            endcase
        end
    end
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            bps_sel <= 1'b0;
            sign_sel <= 1'b0;
            cnt <= 'h0;
            tran_cnt <= 'h0;
        end else begin
            if (state == TRAN) begin
                case (uart_ctl)
                    3'h0: if (cnt == bps9600_2) begin
                            cnt <= 'h0;
                            bps_sel <= ~sign_sel;
                            sign_sel <= ~sign_sel;
                            tran_cnt <= tran_cnt + 1'b1;
                          end else begin
                            cnt <= cnt + 1'b1;
                            bps_sel <= 1'b0;
                          end
                    3'h1: if (cnt == bps19200_2) begin
                            cnt <= 'h0;
                            bps_sel <= ~sign_sel;
                            sign_sel <= ~sign_sel;
                            tran_cnt <= tran_cnt + 1'b1;
                          end else begin
                            cnt <= cnt + 1'b1;
                            bps_sel <= 1'b0;
                          end
                    3'h2: if (cnt == bps38400_2) begin
                            cnt <= 'h0;
                            bps_sel <= ~sign_sel;
                            sign_sel <= ~sign_sel;
                            tran_cnt <= tran_cnt + 1'b1;
                          end else begin
                            cnt <= cnt + 1'b1;
                            bps_sel <= 1'b0;
                          end
                    3'h3: if (cnt == bps57600_2) begin
                            cnt <= 'h0;
                            bps_sel <= ~sign_sel;
                            sign_sel <= ~sign_sel;
                            tran_cnt <= tran_cnt + 1'b1;
                          end else begin
                            cnt <= cnt + 1'b1;
                            bps_sel <= 1'b0;
                          end
                    3'h4: if (cnt == bps115200_2) begin
                            cnt <= 'h0;
                            bps_sel <= ~sign_sel;
                            sign_sel <= ~sign_sel;
                            tran_cnt <= tran_cnt + 1'b1;
                          end else begin
                            cnt <= cnt + 1'b1;
                            bps_sel <= 1'b0;
                          end
                    3'h5: if (cnt == bps256000_2) begin
                            cnt <= 'h0;
                            bps_sel <= ~sign_sel;
                            sign_sel <= ~sign_sel;
                            tran_cnt <= tran_cnt + 1'b1;
                          end else begin
                            cnt <= cnt + 1'b1;
                            bps_sel <= 1'b0;
                          end
                    default: begin
                                cnt <= 'h0;
                                tran_cnt <= 0;
                                bps_sel <= 'h0;
                                sign_sel <= 'h0;
                             end
                endcase
            end else begin
                cnt <= 'h0;
                sign_sel <= 'h0;
                bps_sel <= 1'b0;
                tran_cnt <= 'h0;
                bps_sel <= 1'b0;
            end
        end
    end
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            data_in <= 'h0;
            data_sign <= 'h0;
        end else begin
            if (bps_sel) begin
                if (tran_cnt > 2 && tran_cnt <= 16) begin
                    data_in[tran_cnt[4:1] - 1] <= rs_rx;
                end
                data_sign <= (tran_cnt == 17) ? 1'b1 : 1'b0;
            end else begin
                data_sign <= 1'b0;
            end
        end
    end
    
endmodule