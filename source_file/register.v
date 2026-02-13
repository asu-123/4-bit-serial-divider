`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 20:26:45
// Design Name: 
// Module Name: register
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


module register(clk,rst,ce,d,q
    );
    input clk,rst,d,ce;
    output reg q;
    always@(posedge clk)begin
    if(rst)
    q<=1'b0;
    else if(ce)
    q<=d;
    end
endmodule
