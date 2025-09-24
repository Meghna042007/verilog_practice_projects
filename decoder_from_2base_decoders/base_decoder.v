`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 21:31:59
// Design Name: 
// Module Name: base_decoder
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
//creating a base 3_to_8 decoder module

module base_decoder(
    input [2:0] a,
    input en,
    output reg [7:0] b
    );
    always @(*)
    begin
    if(en==0)
       b=8'b0;
    else
        case({a})
          3'b000: b=8'b00000001;
          3'b001: b=8'b00000010;
          3'b010: b=8'b00000100;
          3'b011: b=8'b00001000;
          3'b100: b=8'b00010000;
          3'b101: b=8'b00100000;
          3'b110: b=8'b01000000;
          3'b111: b=8'b10000000;
        endcase
    end
endmodule
