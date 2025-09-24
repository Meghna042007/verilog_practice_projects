`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 21:41:10
// Design Name: 
// Module Name: top_decoder
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

//writing the top decoder module which instantiates the base 3_to_8 decoder twice to make a 4_to_16 decoder
module top_decoder(
    input [3:0] in,
    input en,
    output [15:0] out
    );
    wire [7:0] out_lo,out_hi;
    wire en_lo= en & ~in[3];
    wire en_hi= en & in[3];
    
    base_decoder dec_lo(.a(in[2:0]),.en(en_lo),.b(out_lo));
    base_decoder dec_hi(.a(in[2:0]),.en(en_hi),.b(out_hi));
    assign out= {out_hi,out_lo};
endmodule
