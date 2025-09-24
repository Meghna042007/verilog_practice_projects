`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 21:53:21
// Design Name: 
// Module Name: top_decoder_tsb
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


module top_decoder_tsb();
 reg [3:0] IN;
 reg EN;
 wire [15:0] OUT;
 top_decoder dut(.in(IN),.en(EN),.out(OUT));
 initial
 begin
 $monitor($time,"In=%b,Out=%b,En=%b",IN,OUT,EN);
 EN=0;
 IN=4'b0000;#10;
 IN=4'b1000;#10;
 EN=1;
 IN=4'b0000;#10;
 IN=4'b0001;#10;
 IN=4'b0010;#10;
 IN=4'b0011;#10;
 IN=4'b0100;#10;
 IN=4'b0101;#10;
 IN=4'b0110;#10;
 IN=4'b0111;#10;
 IN=4'b1000;#10;
 IN=4'b1001;#10;
 IN=4'b1010;#10;
 IN=4'b1011;#10;
 IN=4'b1100;#10;
 IN=4'b1101;#10;
 IN=4'b1110;#10;
 IN=4'b1111;#10;
 $finish;
 end
endmodule
