`timescale 1ns/1ps

module rom_tb;


reg [3:0] addr;

wire [7:0] data_out;


rom uut(

.addr(addr),
.data_out(data_out)

);


initial
begin


$dumpfile("rom.vcd");
$dumpvars(0,rom_tb);


// Read different memory locations

addr = 4'b0000;
#10;

addr = 4'b0001;
#10;

addr = 4'b0010;
#10;

addr = 4'b0100;
#10;

addr = 4'b1000;
#10;

addr = 4'b1111;
#10;


$finish;


end


endmodule