`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2024 22:14:41
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clk;
    reg [7:0] in;
    wire [7:0] anyedge;
    des dut(.clk(clk),.in(in),.anyedge(anyedge));
    always #5 clk=~clk;
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%t in=%b anyedge=%b",$time,in,anyedge);
    clk<=0;
    #4 in<=69;
    #10 in<=0;
    #10 in<=98;
    #10 in<=0;
    #10 $finish;
    end
endmodule
