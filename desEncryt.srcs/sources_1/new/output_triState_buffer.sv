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


module output_triState_buffer(
    input logic bufferSignal,
    input logic [63:0] cocncat_ciphertext,
    output logic [63:0] ciphertext
    );
    
    always_comb
    begin
        case (bufferSignal)
            1'b1: ciphertext = cocncat_ciphertext;
            default: ciphertext = 64'bz;
        endcase
    end
    
endmodule
