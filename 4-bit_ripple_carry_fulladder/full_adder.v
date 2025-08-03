`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 14:48:36
// Design Name: 
// Module Name: full_adder
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

//define a 1-bit full adder
module full_adder(sum,c_out,a,b,c_in );

//I/O port declaration
 input a,b,c_in;
 output sum,c_out;
 
 //internal nets
 wire s1,c1,c2;
 
 //logic gates primitives instantiation
 xor (s1,a,b);
 and (c1,a,b);
 
 xor (sum,s1,c_in);
 and (c2,s1,c_in);
 
 or  (c_out,c1,c2);
endmodule
