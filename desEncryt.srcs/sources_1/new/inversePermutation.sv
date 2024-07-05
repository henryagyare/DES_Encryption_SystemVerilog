`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 10:26:10 PM
// Design Name: 
// Module Name: inversePermutation
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


module inversePermutation(
    input logic [31:0] inversePerm_leftInput, inversePerm_rightInput,
    output logic [63:0] inversePerm_output
    );
    
    logic [63:0] combinedInput;
    assign combinedInput = {inversePerm_leftInput, inversePerm_rightInput};

endmodule
