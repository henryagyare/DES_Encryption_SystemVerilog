`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2024 10:52:50 PM
// Design Name: 
// Module Name: permutationChoice2
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


module permutationChoice2(
    input logic [55:0] pc2Input,
    output logic [47:0] pc2Output
    );

assign pc2Output[48 - 1] = pc2Input[55 - 14];
assign pc2Output[47 - 1] = pc2Input[55 - 17];
assign pc2Output[46 - 1] = pc2Input[55 - 11];
assign pc2Output[45 - 1] = pc2Input[55 - 24];
assign pc2Output[44 - 1] = pc2Input[55 - 1];
assign pc2Output[43 - 1] = pc2Input[55 - 5];

assign pc2Output[42 - 1] = pc2Input[55 - 3];
assign pc2Output[41 - 1] = pc2Input[55 - 28];
assign pc2Output[40 - 1] = pc2Input[55 - 15];
assign pc2Output[39 - 1] = pc2Input[55 - 6];
assign pc2Output[38 - 1] = pc2Input[55 - 21];
assign pc2Output[37 - 1] = pc2Input[55 - 10];

assign pc2Output[36 - 1] = pc2Input[55 - 23];
assign pc2Output[35 - 1] = pc2Input[55 - 19];
assign pc2Output[34 - 1] = pc2Input[55 - 12];
assign pc2Output[33 - 1] = pc2Input[55 - 4];
assign pc2Output[32 - 1] = pc2Input[55 - 26];
assign pc2Output[31 - 1] = pc2Input[55 - 8];

assign pc2Output[30 - 1] = pc2Input[55 - 16];
assign pc2Output[29 - 1] = pc2Input[55 - 7];
assign pc2Output[28 - 1] = pc2Input[55 - 27];
assign pc2Output[27 - 1] = pc2Input[55 - 20];
assign pc2Output[26 - 1] = pc2Input[55 - 13];
assign pc2Output[25 - 1] = pc2Input[55 - 2];
 
assign pc2Output[24 - 1] = pc2Input[55 - 41];
assign pc2Output[23 - 1] = pc2Input[55 - 52];
assign pc2Output[22 - 1] = pc2Input[55 - 31];
assign pc2Output[21 - 1] = pc2Input[55 - 37];
assign pc2Output[20 - 1] = pc2Input[55 - 47];
assign pc2Output[19 - 1] = pc2Input[55 - 55];

assign pc2Output[18 - 1] = pc2Input[55 - 30];
assign pc2Output[17 - 1] = pc2Input[55 - 40];
assign pc2Output[16 - 1] = pc2Input[55 - 51];
assign pc2Output[15 - 1] = pc2Input[55 - 45];
assign pc2Output[14 - 1] = pc2Input[55 - 33];
assign pc2Output[13 - 1] = pc2Input[55 - 48];

assign pc2Output[12 - 1] = pc2Input[55 - 44];
assign pc2Output[11 - 1] = pc2Input[55 - 49];
assign pc2Output[10 - 1] = pc2Input[55 - 39];
assign pc2Output[9 - 1] = pc2Input[55 - 56];
assign pc2Output[8 - 1] = pc2Input[55 - 34];
assign pc2Output[7 - 1] = pc2Input[55 - 53];

assign pc2Output[6 - 1] = pc2Input[55 - 46];
assign pc2Output[5 - 1] = pc2Input[55 - 42];
assign pc2Output[4 - 1] = pc2Input[55 - 50];
assign pc2Output[3 - 1] = pc2Input[55 - 36];
assign pc2Output[2 - 1] = pc2Input[55 - 29];
assign pc2Output[1 - 1] = pc2Input[55 - 32];


endmodule
