`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 10:34:27 PM
// Design Name: 
// Module Name: reg48
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


module reg48(
    input logic clk, reg32Load,
    input logic [31:0] reg32Input,
    output logic [31:0] reg32Output
    );
    
    
    always_ff @(posedge clk)
    begin
        if (reg32Load == 1'b1)      
            reg32Output <= reg32Input;
    end    
endmodule

