`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2021 12:15:15 PM
// Design Name: 
// Module Name: reg_dezpl_4b
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


module reg_dezpl_4b(clk,D,reset,q0,q1,q2,q3);

    input clk;
    //input en;
    input D;
    input reset;
    output q0,q1,q2,q3;
    
    flip_flop_d register0(clk,reset,D,q0);
    flip_flop_d register1(clk,reset,q0,q1);
    flip_flop_d register2(clk,reset,q1,q2);
    flip_flop_d register3 (clk,reset,q2,q3);

endmodule
