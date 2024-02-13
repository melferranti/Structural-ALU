`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 08:36:51 PM
// Design Name: 
// Module Name: Or
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


module Or(out, in_1, in_2);

    parameter n = 32;
    output [n - 1 : 0] out;
    input [n - 1 : 0] in_1;
    input [n - 1 : 0] in_2;

    genvar i;
    
    generate for (i = 0; i < n; i = i + 1) begin
        or orblk(out[i], in_1[i], in_2[i]);
    end
    endgenerate

endmodule
