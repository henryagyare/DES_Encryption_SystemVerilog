`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 10:13:58 PM
// Design Name: 
// Module Name: triState
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


module triState(
    input logic bufferSignal,
    input logic [31:0] bufferInput,
    output logic [31:0] bufferOutput
    );
    
    always_comb
    begin
        case (bufferSignal)
            1'b1: bufferOutput = bufferInput;
            default: bufferOutput = 32'bz;
        endcase
    end
    
endmodule
