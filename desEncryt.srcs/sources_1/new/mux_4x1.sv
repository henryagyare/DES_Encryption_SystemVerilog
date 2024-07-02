`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 09:49:15 PM
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
    input logic s0, s1, 
    input logic [31:0] I0, I1, I2, I3,
    output logic [31:0] muxOut
     );
     logic [1:0] select_signal;
     
     assign select_signal = {s0, s1};
     
     always_comb
     begin
        case (select_signal)
        2'b00: muxOut = I0;
        2'b01: muxOut = I1;
        2'b10: muxOut = I2;
        default: muxOut = I3;
        endcase
        
     end

     
     
endmodule
