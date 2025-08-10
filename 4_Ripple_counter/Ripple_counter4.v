`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2025 20:27:09
// Design Name: 
// Module Name: Ripple_counter4
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


module Ripple_counter4(
    input clock,
    input clear,
    output [3:0] Q
    );
    T_flipflop TFF1(clock,clear,Q[0]);
    T_flipflop TFF2(Q[0],clear,Q[1]);
    T_flipflop TFF3(Q[1],clear,Q[2]);
    T_flipflop TFF4(Q[2],clear,Q[3]);
endmodule
