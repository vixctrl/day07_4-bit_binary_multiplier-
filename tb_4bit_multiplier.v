`timescale 1ns/1ps
module tb_multiplier_4bit;

    reg [3:0] A, B;
    wire [7:0] P;

    multiplier_4bit uut (.A(A), .B(B), .P(P));

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, tb_multiplier_4bit);

        A = 4'b0011; B = 4'b0101; #10; // 3 * 5 = 15
        A = 4'b1111; B = 4'b1111; #10; // 15 * 15 = 225
        A = 4'b1001; B = 4'b0010; #10; // 9 * 2 = 18
        A = 4'b0110; B = 4'b0100; #10; // 6 * 4 = 24

        $finish;
    end

endmodule
