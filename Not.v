`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 06:51:37 PM
// Design Name: 
// Module Name: Not
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


module Not(out, in);

    parameter n = 32;
    output [n - 1 : 0] out;
    input [n - 1 : 0] in;
    
    genvar i;
    
    generate for (i = 0; i < n; i = i + 1) begin
        not notblk(out[i], in[i]);
    end
    endgenerate

endmodule
