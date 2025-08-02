`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 00:03:46
// Design Name: 
// Module Name: mux_stimuli
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


module mux_stimuli( );
//declaring input variables
reg A, B, C, D; 
reg S1, S0;

//declaring output wires
wire OUTPUT;

//mux instantiation
mux4_to_1 mymux(OUTPUT, A, B, C, D, S1, S0);

initial begin
  // Setting input lines
  A = 1; B = 0; C = 1; D = 0;
  $display("A=%b, B=%b, C=%b, D=%b", A, B, C, D);

  // Test case 1: select A
  S1 = 0; S0 = 0;
  #5;  // Wait for signals to propagate
  $display("S1=%b, S0=%b => OUTPUT=%b", S1, S0, OUTPUT);

  // Test case 2: select B
  S1 = 0; S0 = 1;
  #5;
  $display("S1=%b, S0=%b => OUTPUT=%b", S1, S0, OUTPUT);

  // Test case 3: select C
  S1 = 1; S0 = 0;
  #5;
  $display("S1=%b, S0=%b => OUTPUT=%b", S1, S0, OUTPUT);

  // Test case 4: select D
  S1 = 1; S0 = 1;
  #5;
  $display("S1=%b, S0=%b => OUTPUT=%b", S1, S0, OUTPUT);

  $finish;
end
endmodule


