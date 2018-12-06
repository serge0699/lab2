`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2018 19:21:44
// Design Name: 
// Module Name: tb_lab2new
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


module tb_lab2new;

  integer i;
  
  parameter COUNT = 65;
  
  reg  [3:0] sw_i;
  reg  [3:0] btn_i;
  wire [7:0] sym;
  wire [2:0] rgb_led_o;

  lab2 uut (
  .sw_i(sw_i),
  .btn_i(btn_i),
  .rgb_led_o(rgb_led_o),
  .sym(sym)
);

  initial 
    begin
      for( i = 0; i < COUNT; i = i + 1 )
        begin
          #10
          sw_i  = $urandom%10;
          btn_i = $urandom%10;
        end
    end
endmodule
