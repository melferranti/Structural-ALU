`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 08:28:51 PM
// Design Name: 
// Module Name: Mov
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


module Mov(out, in);

    parameter n = 32;
    output [n - 1 : 0] out;
    input [n - 1 : 0] in;

    genvar i;
    
    generate for (i = 0; i < n; i = i + 1) begin
        and movblk(out[i], in[i], in[i]);
    end
    endgenerate

endmodule
