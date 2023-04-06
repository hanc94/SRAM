`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2021 09:00:19 AM
// Design Name: 
// Module Name: SRAM
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


module SRAM(w_clk,r_clk,w_data,w_ena,r_data,r_ena,w_addr,r_addr);

    parameter FIFO_WIDTH = 29;
    parameter FIFO_DEPTH = 128;
    parameter ADDR_WIDTH = 7;
    
    input w_clk,r_clk,w_ena,r_ena;
    input [FIFO_WIDTH-1:0] w_data;
    input [ADDR_WIDTH-1:0] w_addr,r_addr;
    output [FIFO_WIDTH-1:0] r_data;
    
    reg [FIFO_WIDTH-1:0]MEM[0:FIFO_DEPTH-1];
    assign r_data = MEM[r_addr];
    
    always @(posedge w_clk)
         if (w_ena)
            MEM[w_addr] <= w_data;

endmodule
