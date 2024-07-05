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
    input logic [63:0] desKeyInput,
    output logic [63:0] ciphertext
    );
    
    logic [47:0] generated_key;
    keyAlgorithm keyAlgorithm (
        .keyInput (desKeyInput),
        .keyOutput (generated_key)
    );

    logic [63:0] initial_permutation_output;
    initialPermutation initial_permutation(
        .plaintext (plaintext),
        .initialPerm (initial_permutation_output)
    );

    // logic [32:0] left_mux_output;
    // mux_4x1 left_mux4x1 (

    // );

    // logic [32:0] right_mux_output;
    // mux_4x1 right_mux4x1 (

    // );

    logic [32:0] left_reg32_output;
    reg32 left_reg32 (
        .reg32Input (initial_permutation_output[63:32]),
        .reg32Output (left_reg32_output)
    );

    logic [32:0] right_reg32_output;
    reg32 right_reg32 (
        .reg32Input (initial_permutation_output[31:0]),
        .reg32Output (right_reg32_output)
    );

    logic [47:0] expansion_output;
    expand32to48 expand32to48 (
        .right_half (right_reg32_output),
        .expantable (expansion_output)
    );
    
    logic [47:0] xor48_output;
    xor48 xor48 (
        .expanded_bits (expansion_output),
        .roundNKey (generated_key),
        .xor48Output (xor48_output)
    );

    logic [47:0] reg48_output;
    reg48 reg48 (
        .reg48Input (xor48_output),
        .reg48Output (reg48_output)
    );

    logic [32:0] sbox_combine_output;
    S_Box_Combine S_Box_Combine (
        .sboxInput (reg48_output),
        .sboxOutput (sbox_combine_output)
    );

    logic [32:0] permutation_table_output;
    permutationTable permutationTable (
        .p_table_input (sbox_combine_output),
        .p_table_output (permutation_table_output)

    );

    logic [32:0] xor32_output;
    xor32 xor32 (
        .permutationOutput (permutation_table_output),
        .leftHalf (left_reg32_output),
        .xor32Output (xor32_output)
    );

    logic [63:0] inverse_permutation_output;
    inversePermutation inverse_permutation(
        .inversePerm_leftInput (left_reg32_output),
        .inversePerm_rightInput (xor32_output),
        .inversePerm_output (inverse_permutation_output)
    );

    logic [63:0] roundN_ciphertext;
    output_triState_buffer output_triState_buffer (
        .cocncat_ciphertext (inverse_permutation_output),
        .ciphertext (roundN_ciphertext)
    );

    assign ciphertext = roundN_ciphertext;

endmodule
