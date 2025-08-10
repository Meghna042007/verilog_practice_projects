`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2025 20:32:23
// Design Name: 
// Module Name: Ripple_stimuli
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


module Ripple_stimuli();
reg CLOCK,CLEAR;
wire[3:0]Q;
initial
  $monitor($time, "Count Q = %b Clear= %b", Q[3:0],CLEAR);
 Ripple_counter4 rc(CLOCK,CLEAR,Q);
initial
begin
    CLEAR=1'b1;
   #34 CLEAR=1'b0;
   #200 CLEAR=1'b1;
   #50 CLEAR=1'b0;
end
initial
begin
    CLOCK=1'b0;
    forever #10 CLOCK=~CLOCK;
end
initial
begin
 #400 $finish;
end
    
endmodule
