`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 20:28:19
// Design Name: 
// Module Name: fadd
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


module fadd(a,b,cin,sum,cout
    );
    input [3:0]a,b;
    input cin;
    output [3:0]sum;
    output cout;
    
    
    assign {cout, sum} = a + b + cin;
endmodule
