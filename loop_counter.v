`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 13:49:13
// Design Name: 
// Module Name: loop_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module loop_counter1(
    clk
    ,c
    ,carry
    );
input clk;
output [3:0] c;
output carry;
reg [3:0] c = 0;
reg carry = 0;
always@(posedge clk) begin
    if (c == 1) begin c<=0;carry<=1;end
    else begin c<=c+1;carry<=0;end   
end
endmodule

module loop_counter2(
    carry_in
    ,r
    ,carry_out
    );
input carry_in;
output [3:0] r;
output carry_out;
reg [3:0] r = 0;
reg carry_out = 0;
always@(carry_in) begin
    if ((r==1)&&(carry_in==1)) begin r<=0;carry_out<=1;end
    else if (carry_in == 1) begin r<=r+1;carry_out=0;end
    else begin r <= r;carry_out=0;end
    
end
endmodule

module loop_counter3(
    carry_in
    ,j
    ,carry_out
    );
input carry_in;
output [3:0] j;
output carry_out;
reg [3:0] j = 0;
reg carry_out = 0;
always@(carry_in) begin
    if ((j==2)&&(carry_in==1)) begin j<=0;carry_out<=1;end
    else if (carry_in == 1) begin j<=j+1;carry_out=0;end
    else begin j <= j;carry_out=0;end
    
end
endmodule

module loop_counter4(
    carry_in
    ,i
    ,carry_out
    );
input carry_in;
output [3:0] i;
output carry_out;
reg [3:0] i = 0;
reg carry_out = 0;
always@(carry_in) begin
    if ((i==2)&&(carry_in==1)) begin i<=0;carry_out<=1;end
    else if (carry_in == 1) begin i<=i+1;carry_out=0;end
    else begin i <= i;carry_out=0;end
    
end
endmodule

module loop(
    clk
    ,r
    ,c
    ,i
    ,j
    ,ready);
input clk;
output [3:0] r;
output [3:0] c;
output [3:0] i;
output [3:0] j;
output ready;   // finish signal
wire carry1;
wire carry2;
wire carry3;
loop_counter1 l1(
    .clk(clk),
    .c(c),
    .carry(carry1)
    );
loop_counter2 l2(
    .carry_in(carry1),
    .r(r),
    .carry_out(carry2));
loop_counter3 l3(
    .carry_in(carry2),
    .j(j),
    .carry_out(carry3));
loop_counter4 l4(
    .carry_in(carry3),
    .i(i),
    .carry_out(ready));
endmodule
