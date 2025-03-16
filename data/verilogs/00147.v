module display(
    input clk, rst, mode,
    input [31:0]disp_num,
    output reg [7:0]seg,
    output reg [3:0]anode
);

    reg [26:0]tick;
    reg [1:0]an;
    reg [3:0]num;
    reg t;
	reg [7:0]dots;
    
    initial begin
        an <= 2'b00;
        tick <= 0;
		dots <= 0;
		num <= 0;
    end
    
    always @(posedge clk or posedge rst) begin
        if (rst == 1'b1) tick <= 0;
		else tick <= tick+1;
	end
    
    always @(posedge tick[16] or posedge rst) begin
        if (rst == 1'b1) an <= 0;
		else an <= an + 1;
	end
	
    always @(an) begin
        if (rst == 1'b1) begin
			anode <= 4'b1111;
			num <= 0;
			dots <= 0;
		end else begin 
		anode <= ~(4'b1<<an);
			case(an) 
				2'b00: begin 
					num <= disp_num[3:0]; 
					dots <= {disp_num[24], disp_num[0], disp_num[4], disp_num[16], disp_num[25], disp_num[17], disp_num[5], disp_num[12]}; 
				end
				2'b01: begin 
					num <= disp_num[7:4]; 
					dots <= {disp_num[26], disp_num[1], disp_num[6], disp_num[18], disp_num[27], disp_num[19], disp_num[7], disp_num[13]}; 
				end
				2'b10: begin 
					num <= disp_num[11:8]; 
					dots <= {disp_num[28], disp_num[2], disp_num[8], disp_num[20], disp_num[29], disp_num[21], disp_num[9], disp_num[14]}; 
				end
				2'b11: begin 
					num <= disp_num[15:12]; 
					dots <= {disp_num[30], disp_num[3], disp_num[10], disp_num[22], disp_num[31], disp_num[23], disp_num[11], disp_num[15]}; 
				end
				default:;
			endcase
		end
    end

    always @(*) begin
        if (rst == 1'b1) seg <= 0;
		else begin
			if(mode==1'b1) begin
				case(num)
					4'h0 : seg[7:0] <= 8'b10000001;
					4'h1 : seg[7:0] <= 8'b11001111;
					4'h2 : seg[7:0] <= 8'b10010010;
					4'h3 : seg[7:0] <= 8'b10000110;
					4'h4 : seg[7:0] <= 8'b11001100;
					4'h5 : seg[7:0] <= 8'b10100100;
					4'h6 : seg[7:0] <= 8'b10100000;
					4'h7 : seg[7:0] <= 8'b10001111;
					4'h8 : seg[7:0] <= 8'b10000000;
					4'h9 : seg[7:0] <= 8'b10000100;
					4'hA : seg[7:0] <= 8'b10001000;
					4'hB : seg[7:0] <= 8'b11100000;
					4'hC : seg[7:0] <= 8'b10110001;
					4'hD : seg[7:0] <= 8'b11000010;
					4'hE : seg[7:0] <= 8'b10110000;
					default : seg[7:0] <= 8'b10111000;
				endcase
			end else seg[7:0] <= dots;
		end
	end

endmodule