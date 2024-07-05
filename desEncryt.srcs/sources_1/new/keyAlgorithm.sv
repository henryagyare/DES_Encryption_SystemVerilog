`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2024 02:28:31 PM
// Design Name: 
// Module Name: keyAlgorithm
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


module keyAlgorithm(
    input logic [63:0] keyInput,
    output logic [47:0] keyOutput
    );

    logic [55:0] PC1_output;
    permutationChoice1 PC1 (
        .pc1Input (keyInput),
        .pc1Output (PC1_output)
    );

    // ToDo: include a left and right 2x1 Multiplexer here.

    logic [27:0] LCS_output;
    left_circular_shift left_circular_shift (

    );

    logic [47:0] PC2_output;
    permutationChoice2 PC2 (
        .pc2Input (PC1_output),     // this has to be the concatenation of the left and right bit half after left circular shift
        .pc2Output (PC2_output)
    );

    reg48 storeKey_register (
        .reg48Input (PC2_output),
        .reg48Output (keyOutput)
    );

endmodule

