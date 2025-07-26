`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 13:23:57
// Design Name: 
// Module Name: logic_gates_test
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


module logic_gates_test( );
reg a,b;
wire y0,y1,y2;
logic_gates uut(a,b,y0,y1,y2);
initial
begin
   a= 0;b=0;
#10a= 0;b=1;
#10a= 1;b=0;
#10a= 1;b=1;
#10 $finish;
end 
endmodule
