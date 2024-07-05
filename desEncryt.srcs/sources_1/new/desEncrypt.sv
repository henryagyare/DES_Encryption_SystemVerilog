`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 08:42:28 PM
// Design Name: 
// Module Name: desEncrypt
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


module desEncrypt(
    input logic [63:0] plaintext,
    input logic [63:0] roundkey,
    output logic [63:0] ciphertext
    );
    
    logic [63:0] initial_permutation_output;
    initialPermutation initial_permutation(

    );

    logic [32:0] left_mux_output
    mux4x1 left_mux4x1 (

    );

    logic [32:0] right_mux_output
    mux4x1 right_mux4x1 (

    );

    logic [32:0] left_reg32_output
    reg32 left_reg32 (

    );

    logic [32:0] right_reg32_output
    reg32 right_reg32 (
        
    );

    logic [47:0] expansion_output
    expand32to48 expand32to48 (
        
    );
    
    logic [47:0] xor48_output
    xor48 xor48 (
        
    );



endmodule
