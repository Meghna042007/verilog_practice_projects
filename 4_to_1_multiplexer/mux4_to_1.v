`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 23:48:19
// Design Name: 
// Module Name: mux4_to_1
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

//Module 4_to_1 multiplexer
module mux4_to_1(out,a,b,c,d,s1,s0 );
//port declaration
output out;
input a,b,c,d;
input s1,s0;

//Internal wire declaration
wire s1n,s0n;
wire ya,yb,yc,yd;

//Gate initiations
//Create not signals
not (s1n,s1);
not (s0n,s0);

//3 input AND gates initialisation
and (ya,a,s1n,s0n);
and (yb,b,s1n,s0);
and (yc,c,s1,s0n);
and (yd,d,s1,s0);

//4 input OR gate initialisation
or (out,ya,yb,yc,yd);
endmodule
