`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 09:46:57 AM
// Design Name: 
// Module Name: Register
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


module Register(out, in, clk);

    parameter n = 32;
    output [n - 1 : 0] out;
    input [n - 1 : 0] in;
    input clk;

    genvar i;
    
    generate for (i = 0; i < n; i = i + 1) begin
        dff DFF(out[i], in[i], clk);
    end
    endgenerate
    
endmodule
