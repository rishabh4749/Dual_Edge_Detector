`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2024 22:11:30
// Design Name: 
// Module Name: des
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


module des (
    input clk,
    input [7:0] in,
    output reg [7:0] anyedge
);
    
    reg [7:0] temp;
    
    always @ (posedge clk)
    begin
    temp <= in;
    anyedge <= in ^ temp;
    end

endmodule
