module driver_vga_640x480(clk_vga, hs, vs, hc_visible, vc_visible);
	input clk_vga;
	output hs, vs;
	output [9:0] hc_visible;
	output [9:0] vc_visible;

	parameter hpixels = 1360;
	parameter vlines = 805;
	parameter hfp = 64;
	parameter hsc = 104;
	parameter hbp = 168;
	parameter vfp = 3;
	parameter vsc = 4;
	parameter vbp = 30;

	reg [9:0] hc, hc_next, vc, vc_next;

	assign hc_visible = ((hc < (hpixels - hfp)) && (hc > (hsc + hbp))) ? (hc - (hsc + hbp)) : 10'd0;
	assign vc_visible = ((vc < (vlines - vfp)) && (vc > (vsc + vbp))) ? (vc - (vsc + vbp)) : 10'd0;

	always @(*) begin
		if(hc == hpixels)
			hc_next = 10'd0;
		else
			hc_next = hc + 10'd1;
	end

	always @(*) begin
		if(hc == 10'd0) begin
			if(vc == vlines)
				vc_next = 10'd0;
			else
				vc_next = vc + 10'd1;
		end else
			vc_next = vc;
	end

	always @(posedge clk_vga) begin
		hc <= hc_next;
		vc <= vc_next;
	end

	assign hs = (hc < hsc) ? 1'b0 : 1'b1;
	assign vs = (vc < vsc) ? 1'b0 : 1'b1;

endmodule