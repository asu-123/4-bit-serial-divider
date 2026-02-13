`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 21:48:16
// Design Name: 
// Module Name: sdiv_tb
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


module sdiv_tb();

  reg clk;
  reg reset;
  reg start;
  reg [3:0] a, b;
  wire [3:0] p;


  sdiv dut (
    .clk(clk),
    .reset(reset),
    .start(start),
    .a(a),
    .b(b),
    .p(p)
  );


  always #5 clk = ~clk;

  initial begin
    // Initial values
    clk   = 0;
    reset = 1;
    start = 0;
    a     = 0;
    b     = 0;

    // Apply reset
    #10;
    reset = 0;

    // -------- Test Case --------
    // 8 / 2 = 4
    #10;
    a     = 4'd5;
    b     = 4'd2;
    start = 1;

    #10;
    start = 0;

  
    #300;

    $finish;
  end

//  initial begin
//    $monitor("T=%0t | a=%d b=%d | p=%d",
//              $time, a, b, p);
//  end

endmodule
