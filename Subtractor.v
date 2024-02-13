`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 08:54:18 PM
// Design Name: 
// Module Name: Subtractor
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


module Subtractor(Cout, D, A, B, Cin);
    
    parameter n = 32;
    output Cout;
    output [n - 1 : 0] D;
    input [n - 1 : 0] A;
    input [n - 1 : 0] B;
    input Cin;
    
    wire [n : 0] C;
    wire [n - 1 : 0] NOT_B;
    
    assign C[0] = Cin;
    assign Cout = C[n];
 
    genvar i;
    generate for (i = 0; i < n; i = i + 1) begin
        Not notties (NOT_B[i], B[i]);
    end
    endgenerate
    
    genvar j;
    generate for (j = 0; j < n; j = j + 1) begin
        FA_str Adder_1b (C[j+1], D[j], A[j], NOT_B[j], C[j]);
    end
    endgenerate
    
endmodule
