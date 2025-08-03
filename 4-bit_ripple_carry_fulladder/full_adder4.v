`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 15:02:32
// Design Name: 
// Module Name: full_adder4
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

//defining a 4-bit full adder
module full_adder4(sum,c_out,a,b,c_in);
//I/O port declaration
  input [3:0]a;
  input [3:0]b;
  input c_in;
  output [3:0] sum;
  output c_out;
  
  //internal nets
  wire c1,c2,c3;
  
  //four 1-bit full adders instantiation
  full_adder fa1(sum[0],c1,a[0],b[0],c_in );
  full_adder fa2(sum[1],c2,a[1],b[1],c1 );
  full_adder fa3(sum[2],c3,a[2],b[2],c2 );
  full_adder fa4(sum[3],c_out,a[3],b[3],c3 );
  
endmodule
