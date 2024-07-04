`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 10:27:48 PM
// Design Name: 
// Module Name: expand32to48
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

 module expand32to48(
      input logic [31:0] plaintext,
      output logic [47:0] expantable

    );
    assign expantable[47] =
    plaintext[32-32];
    assign expantable[46] =
    plaintext[32-1];
    assign expantable[45] =
    plaintext[32-2];
    assign expantable[44] =
    plaintext[32-3];
    assign expantable[43] =
    plaintext[32-4];
    assign expantable[42] =
    plaintext[32-5];
    assign expantable[41] =
    plaintext[32-4];
    assign expantable[40] =
    plaintext[32-5];
    assign expantable[39] =
    plaintext[32-6];
    assign expantable[38] =
    plaintext[32-7];
    assign expantable[37] =
    plaintext[32-8];
    assign expantable[36] =
    plaintext[32-9];
    assign expantable[35] =
    plaintext[32-8];
    assign expantable[34] =
    plaintext[32-9];
    assign expantable[33] =
    plaintext[32-10];
    assign expantable[32] =
    plaintext[32-11];
    assign expantable[31] =
    plaintext[32-12];
    assign expantable[30] =
    plaintext[32-13];
    assign expantable[29] =
    plaintext[32-12];
    assign expantable[28] =
    plaintext[32-13];
    assign expantable[27] =
    plaintext[32-14];
    assign expantable[26] =
    plaintext[32-15];
    assign expantable[25] =
    plaintext[32-16];
    assign expantable[24] =
    plaintext[32-17];
    assign expantable[23] =
    plaintext[32-16];
    assign expantable[22] =
    plaintext[32-17];
    assign expantable[21] =
    plaintext[32-18];
    assign expantable[20] =
    plaintext[32-19];
    assign expantable[19] =
    plaintext[32-20];
    assign expantable[18] =
    plaintext[32-21];
    assign expantable[17] =
    plaintext[32-20];
    assign expantable[16] =
    plaintext[32-21];
    assign expantable[15] =
    plaintext[32-22];
    assign expantable[14] =
    plaintext[32-23];
    assign expantable[13] =
    plaintext[32-24];
    assign expantable[12] =
    plaintext[32-25];
    assign expantable[11] =
    plaintext[32-24];
    assign expantable[10] =
    plaintext[32-25];
    assign expantable[9] =
    plaintext[32-26];
    assign expantable[8] =
    plaintext[32-27];
    assign expantable[7] =
    plaintext[32-28];
    assign expantable[6] =
    plaintext[32-29];
    assign expantable[5] =
    plaintext[32-28];
    assign expantable[4] =
    plaintext[32-29];
    assign expantable[3] =
    plaintext[32-30];
    assign expantable[2] =
    plaintext[32-31];
    assign expantable[1] =
    plaintext[32-32];
    assign expantable[0] =
    plaintext[32-1];
    
endmodule



