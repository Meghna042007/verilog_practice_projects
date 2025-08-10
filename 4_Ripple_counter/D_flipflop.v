`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2025 20:11:54
// Design Name: 
// Module Name: D_flipflop
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


module D_flipflop(
    input clear,
    input clk,
    input d,
    output q,
    output qbar
    );
   wire cbar,sbar,s,r,rbar;
   assign cbar=~clear;
   assign sbar=~(rbar&s);
   assign s=~(sbar&cbar& ~clk);
   assign r=~(s&~clk&rbar);
   assign rbar=~(r&cbar&d);
   assign q=~(s&qbar);
   assign qbar=~(r&cbar&q);
endmodule
