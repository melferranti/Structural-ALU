`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 09:55:53 AM
// Design Name: 
// Module Name: Adder
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


module Adder(Cout, S, A, B, Cin);
    
    parameter n = 32;
    output Cout;
    output [n - 1 : 0] S;
    input [n - 1 : 0] A;
    input [n - 1 : 0] B;
    input Cin;
    
    wire [n : 0] C;
    
    assign C[0] = Cin;
    assign Cout = C[n];
    
    genvar i;
    
    generate for (i = 0; i < n; i = i + 1) begin
        FA_str Adder_1b (C[i+1], S[i], A[i], B[i], C[i]);
    end
    endgenerate
    
endmodule
