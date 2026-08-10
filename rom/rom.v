module rom(

    input [3:0] addr,
    output reg [7:0] data_out

);


always @(*)
begin

    case(addr)

        4'b0000: data_out = 8'hA0;
        4'b0001: data_out = 8'hA1;
        4'b0010: data_out = 8'hA2;
        4'b0011: data_out = 8'hA3;

        4'b0100: data_out = 8'hA4;
        4'b0101: data_out = 8'hA5;
        4'b0110: data_out = 8'hA6;
        4'b0111: data_out = 8'hA7;

        4'b1000: data_out = 8'hB0;
        4'b1001: data_out = 8'hB1;
        4'b1010: data_out = 8'hB2;
        4'b1011: data_out = 8'hB3;

        4'b1100: data_out = 8'hB4;
        4'b1101: data_out = 8'hB5;
        4'b1110: data_out = 8'hB6;
        4'b1111: data_out = 8'hB7;

        default:
            data_out = 8'h00;

    endcase

end


endmodule