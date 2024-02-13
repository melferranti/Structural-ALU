`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 10:02:34 AM
// Design Name: 
// Module Name: TopLevel
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


module TopLevel(R0, R2, R3, op, clk);
    
    parameter n = 32;
    input clk;
    input [2:0] op;
    input [n - 1 : 0] R2;
    input [n - 1 : 0] R3;
    output [n - 1 : 0] R0;
    
    wire [n - 1 : 0] mov_out, not_out, adder_out, sub_out, or_out, and_out;
    reg [n - 1 : 0] R1;
    wire Cout;
    
    Mov mover(.out(mov_out), .in(R2));
    Not notter(.out(not_out), .in(R2));
    Adder adder(.Cout(Cout), .S(adder_out), .A(R2), .B(R3), .Cin(1'b0));
    Subtractor subber(.Cout(Cout), .D(sub_out), .A(R2), .B(R3), .Cin(1'b1));
    Or orer(.out(or_out), .in_1(R2), .in_2(R3));
    And ander(.out(and_out), .in_1(R2), .in_2(R3));
    Register register(.out(R0), .in(R1), .clk(clk));

    always @ (posedge clk) begin
        case (op)
            3'b000: R1 <= mov_out;
            3'b001: R1 <= not_out;
            3'b010: R1 <= adder_out;
            3'b011: R1 <= sub_out;
            3'b100: R1 <= or_out;
            3'b101: R1 <= and_out;
            default: R1 <= mov_out;
        endcase
    end

endmodule
