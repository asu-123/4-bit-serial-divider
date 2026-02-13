`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 20:40:09
// Design Name: 
// Module Name: luc
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


module luc (
    input        clk,
    input        reset,
    input        en,       
    //input        load,    
    //input  [3:0] load_val, 
    output reg [3:0] count
);

    always @(posedge clk) begin
        if (reset)
            count <= 4'b0000;
        //else if (load)
            //count <= load_val;       
        else if (en)
            count <= count + 1;    
    end

endmodule

