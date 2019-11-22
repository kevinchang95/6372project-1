`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/13 10:22:26
// Design Name: 
// Module Name: mul
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


module mul(
     a
    ,b
    ,clk
    ,result
    );
input [15:0] a;
input [15:0] b;
input clk;
output reg [31:0] result;


always@(posedge clk) begin
    result <= a * b;
    end
endmodule
