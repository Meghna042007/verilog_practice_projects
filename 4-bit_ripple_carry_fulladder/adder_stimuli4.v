`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 15:12:54
// Design Name: 
// Module Name: adder_stimuli4
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

//defining (top level module)
module adder_stimuli4();
//setting up variables
reg [3:0] A,B;
reg C_IN;
wire [3:0] SUM;
wire C_OUT;

//4_bit adder instatiation
full_adder4 myadder(SUM,C_OUT,A,B,C_IN);

//set up monitoring for signal values
initial
begin
 $monitor($time," A= %b,B= %b,C_IN= %b,---C_OUT= %b,SUM= %b \n",A,B,C_IN,C_OUT,SUM);
end

//stimulate input
initial
begin
 A= 4'd0;B= 4'd7;C_IN= 1'b0;
 #5 A= 4'd4;B= 4'd1;C_IN= 1'b1;
 #5 A= 4'd13;B= 4'd3;
 #5 A= 4'd7;B= 4'd0;
 #5 A= 4'd15;B= 4'd1;C_IN= 1'b0;
 #5 A= 4'd2;B= 4'd5;C_IN= 1'b1;
 #5 $finish;
end
endmodule
