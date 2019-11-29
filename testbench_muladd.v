`timescale 1ns / 1ps

module testbench ();

reg clk;
reg [15:0] X,Y;

reg [15:0] dataa_0, datab_0, dataa_1, datab_1, dataa_2, datab_2, dataa_3, datab_3;
wire [31:0] result;

initial begin

	clk = 0;
	//X <= 5; Y <= 5; 
	
	dataa_0 <= 1; datab_0 <= 1;
	dataa_1 <= 2; datab_1 <= 1;
	dataa_2 <= 3; datab_2 <= 1;
	dataa_3 <= 4; datab_3 <= 1;
	
end



always
	#20 begin
	
	clk = !clk;
	//if()
	//X <= X + 1; Y <= Y + 1;
	
	
end


//mac1 U1(clk, X , Y, result);
	muladd  M1(clk,dataa_0,	dataa_1,	dataa_2,	dataa_3,	
	datab_0,	datab_1,	datab_2,	datab_3,
	result);



endmodule