module digital_clock(
    input clk,
    input reset,
    input set_hours,
    input set_minutes,
    input set_mode,
    output reg [1:0] hours_display,
    output reg [1:0] minutes_display,
    output reg [1:0] mode_display
);

reg [4:0] hours;
reg [5:0] minutes;
reg am_pm;

always @(posedge clk) begin
    if (reset) begin
        hours <= 0;
        minutes <= 0;
        am_pm <= 0;
    end else begin
        if (set_hours) begin
            if (hours == 11) begin
                am_pm <= ~am_pm;
            end
            hours <= hours + 1;
            if (hours == 12) begin
                hours <= 0;
            end
        end
        if (set_minutes) begin
            minutes <= minutes + 1;
            if (minutes == 60) begin
                minutes <= 0;
                if (hours == 11) begin
                    am_pm <= ~am_pm;
                end
                hours <= hours + 1;
                if (hours == 12) begin
                    hours <= 0;
                end
            end
        end
        if (set_mode) begin
            mode_display <= mode_display + 1;
            if (mode_display == 3) begin
                mode_display <= 0;
            end
        end
    end
end

always @(hours or am_pm or mode_display) begin
    if (mode_display == 0) begin
        if (hours < 10) begin
            hours_display = 2'b00;
        end else if (hours < 12) begin
            hours_display = 2'b01;
        end else if (hours < 22) begin
            hours_display = 2'b10;
        end else begin
            hours_display = 2'b11;
        end
        if (hours >= 12) begin
            am_pm = 1;
        end
    end else if (mode_display == 1) begin
        if (hours < 10) begin
            hours_display = hours;
        end else if (hours < 20) begin
            hours_display = hours - 10;
        end else begin
            hours_display = hours - 20;
        end
    end else begin
        if (minutes < 10) begin
            minutes_display = minutes;
        end else begin
            minutes_display = minutes - 10;
        end
    end
end

endmodule