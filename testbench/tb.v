module tb;
    wire signed [15:0] z;
    reg signed [7:0] a,b;   

    boothmul my_booth(.a(a),.b(b),.c(z));

    initial 
        begin
            $dumpfile("dump.vcd");
            $dumpvars(0,tb);
        end

    initial
        begin
            $monitor($time,"       ",a," *",b," = ", z);
            a = 8'b10101110;
            b = 8'b100111;
            #50000000
            a = 8'b11110000;
            b = 8'b11010000;
            #50000000
            a = 8'b10011101;
            b = 8'b10000;
            #50000000
            a = 8'b0111;
            b = 8'b01100101;
            #50000000
            b = 8'b10;
            a = 8'b111;
            #50000000
            a = 8'b0011100;
            b = 8'b0101;
            #50000000
            a = 8'b010001;
            b = 8'b1100;
            #50000000
            a = 8'b10010;
            b = 8'b1011111;
        end
endmodule
