`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 20:26:14
// Design Name: 
// Module Name: sdiv
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


module sdiv(clk,reset,start,a,b,p
    );
    input clk,reset,start;
    input [3:0]a,b;
    output reg [3:0]p;
    
    wire [3:0]w,ao,mo,co;
    wire x;
    
    //assign p=co;
    
    always@(*)begin
    if(b==0)begin
        p='bx;
    end
    else begin
        p=co;
    end
    end
    
    fadd fa1(w,~b,1,ao,x);
    mux2 m0(a[0],ao[0],start,mo[0]);
    mux2 m1(a[1],ao[1],start,mo[1]);
    mux2 m2(a[2],ao[2],start,mo[2]);
    mux2 m3(a[3],ao[3],start,mo[3]);
    
    register r0(clk,reset,(start|x),mo[0],w[0]);
    register r1(clk,reset,(start|x),mo[1],w[1]);
    register r2(clk,reset,(start|x),mo[2],w[2]);
    register r3(clk,reset,(start|x),mo[3],w[3]);
    
    luc l1(clk,start,x,co);
    
endmodule
