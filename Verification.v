`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 10:51:54 AM
// Design Name: 
// Module Name: Verification
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


module Verification(Result, clk, op, R2, R3);

    parameter n = 32;
    input clk;
    input [2:0] op;
    input [n - 1 : 0] R2;
    input [n - 1 : 0] R3;
    output reg [n - 1 : 0] Result;
    
    always @ (posedge clk) begin
        case(op)
            3'b000: Result = R2;
            3'b001: Result = ~R2;
            3'b010: Result = R2 + R3;
            3'b011: Result = R2 - R3;
            3'b100: Result = R2 | R3;
            3'b101: Result = R2 & R3;
        endcase
    end
    
endmodule
