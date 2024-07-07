`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2024 11:52:25 AM
// Design Name: 
// Module Name: mux2x1
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


module mux2x1(
    input logic sel,
    input logic [27:0] I0, I1,
    output logic [27:0] mux2x1_output
    );

    always_comb
    begin 
        case (sel)
            1'b0: mux2x1_output = I0;
            default: mux2x1_output = I1;
        endcase
    end

endmodule

