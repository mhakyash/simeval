module TCPWM (
    input stop,
    input count,
    input reload,
    input start,
    input capture,
    output interrupt,
    output ov,
    output un,
    output cc,
    input clock,
    output line,
    output line_n);

    parameter PWMCountMode = 3;
    parameter PWMReloadMode = 0;
    parameter PWMReloadPresent = 0;
    parameter PWMStartMode = 0;
    parameter PWMStopMode = 0;
    parameter PWMSwitchMode = 0;
    parameter QuadIndexMode = 0;
    parameter QuadPhiAMode = 3;
    parameter QuadPhiBMode = 3;
    parameter QuadStopMode = 0;
    parameter TCCaptureMode = 0;
    parameter TCCountMode = 3;
    parameter TCReloadMode = 0;
    parameter TCStartMode = 0;
    parameter TCStopMode = 0;

    reg [31:0] count_reg;
    reg [31:0] reload_reg;
    reg [31:0] capture_reg;
    reg [31:0] compare_reg;

    reg interrupt_reg;
    reg ov_reg;
    reg un_reg;
    reg cc_reg;
    reg line_reg;
    reg line_n_reg;

    always @(posedge clock) begin
        if (stop) begin
            count_reg <= 0;
            interrupt_reg <= 0;
            ov_reg <= 0;
            un_reg <= 0;
            cc_reg <= 0;
            line_reg <= 0;
            line_n_reg <= 1;
        end
        else if (count) begin
            case (PWMCountMode)
                0: count_reg <= count_reg + 1;
                1: count_reg <= count_reg - 1;
                2: count_reg <= count_reg + 1;
                3: count_reg <= count_reg - 1;
                default: count_reg <= count_reg + 1;
            endcase
        end
        else if (reload) begin
            case (PWMReloadMode)
                0: reload_reg <= 0;
                1: reload_reg <= count_reg;
                2: reload_reg <= capture_reg;
                3: reload_reg <= compare_reg;
                default: reload_reg <= 0;
            endcase
        end
        else if (start) begin
            case (PWMStartMode)
                0: count_reg <= 0;
                1: count_reg <= reload_reg;
                2: count_reg <= capture_reg;
                3: count_reg <= compare_reg;
                default: count_reg <= 0;
            endcase
        end
        else if (capture) begin
            case (TCCaptureMode)
                0: capture_reg <= count_reg;
                1: capture_reg <= reload_reg;
                2: capture_reg <= compare_reg;
                default: capture_reg <= count_reg;
            endcase
        end
    end

    always @(*) begin
        case (PWMCountMode)
            0: cc_reg = (count_reg == compare_reg);
            1: cc_reg = (count_reg == compare_reg);
            2: cc_reg = (count_reg > compare_reg);
            3: cc_reg = (count_reg < compare_reg);
            default: cc_reg = (count_reg == compare_reg);
        endcase

        ov_reg = (count_reg == 32'hffffffff);
        un_reg = (count_reg == 0);

        case (PWMSwitchMode)
            0: begin
                line_reg = cc_reg;
                line_n_reg = ~cc_reg;
            end
            1: begin
                line_reg = un_reg;
                line_n_reg = ~un_reg;
            end
            2: begin
                line_reg = ov_reg;
                line_n_reg = ~ov_reg;
            end
            3: begin
                line_reg = 1;
                line_n_reg = 0;
            end
            default: begin
                line_reg = cc_reg;
                line_n_reg = ~cc_reg;
            end
        endcase

        interrupt_reg = (cc_reg && cc);
    end

    assign interrupt = interrupt_reg;
    assign ov = ov_reg;
    assign un = un_reg;
    assign cc = cc_reg;
    assign line = line_reg;
    assign line_n = line_n_reg;

endmodule