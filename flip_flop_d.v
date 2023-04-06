`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2021 11:04:47 AM
// Design Name: 
// Module Name: flip_flop_d
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
module flip_flop_d(clk,reset,D,q);
//inputs and outputs
input clk;
input reset;
input D;
//input en;
output reg q;
always @(negedge clk,posedge reset)
    if(reset) begin
        q <= 1'b0;
    end
    else begin
        q <= D;
    end
endmodule
