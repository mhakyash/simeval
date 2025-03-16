module getID_4digits(
    input enable,
    input [44:0] digits45,
    output reg [15:0] iddecimal4
    );
	 
	 integer ID;
	 integer temp0, temp1;	 

always @(posedge enable) begin
	ID = digits45[16:1];
	
	if(ID>=9000) iddecimal4[15:12] = 9;
	else if(ID>=8000) iddecimal4[15:12] = 8;
	else if(ID>=7000) iddecimal4[15:12] = 7;
	else if(ID>=6000) iddecimal4[15:12] = 6;
	else if(ID>=5000) iddecimal4[15:12] = 5;
	else if(ID>=4000) iddecimal4[15:12] = 4;
	else if(ID>=3000) iddecimal4[15:12] = 3;
	else if(ID>=2000) iddecimal4[15:12] = 2;
	else if(ID>=1000) iddecimal4[15:12] = 1;
	else iddecimal4[15:12] = 0;
	temp0 = ID-(iddecimal4[15:12]*1000);
	
	if(temp0>=900) iddecimal4[11:8] = 9;
	else if(temp0>=800) iddecimal4[11:8] = 8;
	else if(temp0>=700) iddecimal4[11:8] = 7;
	else if(temp0>=600) iddecimal4[11:8] = 6;
	else if(temp0>=500) iddecimal4[11:8] = 5;
	else if(temp0>=400) iddecimal4[11:8] = 4;
	else if(temp0>=300) iddecimal4[11:8] = 3;
	else if(temp0>=200) iddecimal4[11:8] = 2;
	else if(temp0>=100) iddecimal4[11:8] = 1;
	else iddecimal4[11:8] = 0;
	temp1 = temp0-(iddecimal4[11:8]*100);
	
	if(temp1>=90) iddecimal4[7:4] = 9;
	else if(temp1>=80) iddecimal4[7:4] = 8;
	else if(temp1>=70) iddecimal4[7:4] = 7;
	else if(temp1>=60) iddecimal4[7:4] = 6;
	else if(temp1>=50) iddecimal4[7:4] = 5;
	else if(temp1>=40) iddecimal4[7:4] = 4;
	else if(temp1>=30) iddecimal4[7:4] = 3;
	else if(temp1>=20) iddecimal4[7:4] = 2;
	else if(temp1>=10) iddecimal4[7:4] = 1;
	else iddecimal4[7:4] = 0;
	iddecimal4[3:0] = temp1-(iddecimal4[7:4]*10);
		
end

endmodule