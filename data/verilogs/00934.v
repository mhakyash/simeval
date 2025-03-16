module video_generator(
    input clk_cog,
    input clk_vid,
    input ena,
    input setvid,
    input setscl,
    input [31:0] data,
    input [31:0] pixel,
    input [31:0] color,
    input [7:0] aural,
    input carrier,
    output ack,
    output [31:0] pin_out
);

    // configuration
    reg [31:0] vid;
    reg [31:0] scl;

    always @(posedge clk_cog or negedge ena) begin
        if (!ena) begin
            vid <= 32'b0;
        end else if (setvid) begin
            vid <= data;
        end
    end

    always @(posedge clk_cog) begin
        if (setscl) begin
            scl <= data;
        end
    end

    // video shifter
    reg [7:0] cnts;
    reg [7:0] cnt;
    reg [11:0] set;
    reg [31:0] pixels;
    reg [31:0] colors;

    wire enable = |vid[30:29];
    wire vclk = clk_vid && enable;
    wire new_set = set == 1'b1;
    wire new_cnt = cnt == 1'b1;

    always @(posedge vclk) begin
        if (new_set) begin
            cnts <= scl[19:12];
        end
    end

    always @(posedge vclk) begin
        if (new_set || new_cnt) begin
            pixels <= new_set ? pixel :
                        vid[28] ? {pixels[31:30], pixels[31:2]} :
                                   {pixels[31], pixels[31:1]};
        end
    end

    always @(posedge vclk) begin
        if (new_set) begin
            colors <= color;
        end
    end

    always @(posedge vclk) begin
        if (new_set) begin
            cnt <= scl[19:12];
        end else if (new_cnt) begin
            cnt <= cnts;
        end else begin
            cnt <= cnt - 1'b1;
        end
    end

    // capture/acknowledge
    reg cap;
    reg [1:0] snc;

    always @(posedge vclk or posedge snc[1]) begin
        if (snc[1]) begin
            cap <= 1'b0;
        end else if (new_set) begin
            cap <= 1'b1;
        end
    end

    always @(posedge clk_cog) begin
        if (enable) begin
            snc <= {snc[0], cap};
        end
    end

    assign ack = snc[0];

    // discrete output
    reg [7:0] discrete;

    wire [31:0] colorx = colors >> {vid[28] && pixels[1], pixels[0], 3'b000};

    always @(posedge vclk) begin
        discrete <= colorx[7:0];
    end

    // baseband output
    reg [3:0] phase;
    reg [3:0] baseband;

    always @(posedge vclk) begin
        phase <= phase + 1'b1;
    end

    wire [3:0] colorphs = discrete[7:4] + phase;
    wire [2:0] colormod = discrete[2:0] + { discrete[3] && colorphs[3],
                                            discrete[3] && colorphs[3],
                                            discrete[3] };

    always @(posedge vclk) begin
        baseband <= {discrete[3] && colorphs[3], vid[26] ? colormod : discrete[2:0]};
    end

    // broadcast output
    reg [2:0] composite;

    always @(posedge vclk) begin
        composite <= vid[27] ? colormod : discrete[2:0];
    end

    wire [63:0] level = 64'b0011_0100_0100_0101_0101_0110_0110_0111_0011_0011_0010_0010_0001_0001_0000_0000;
    wire [3:0] broadcast = {carrier ^ aural[vid[25:23]], level[{carrier, composite}*4 +: 3]};

    // output pins
    wire [7:0] outp = vid[30] ? vid[29] ? {baseband, broadcast} :
                                        {broadcast, baseband} :
                                        discrete;

    assign pin_out = enable ? {24'b0, outp & vid[7:0]} << {vid[10:9], 3'b000} : 32'b0;

endmodule