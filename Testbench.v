`timescale 1ns/1ps

module tb_alu_8bit;

reg [7:0] A, B;
reg [2:0] sel;
wire [7:0] result;
wire carry, zero;

alu_8bit dut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry),
    .zero(zero)
);

initial begin
    
    $display("Time\tA\tB\tsel\tResult\tCarry\tZero");

    $monitor("%0t\t%d\t%d\t%b\t%d\t%b\t%b",
              $time, A, B, sel, result, carry, zero);

    A = 0; B = 0; sel = 0;
    // Test ADD
    #10 A = 8'd10; B = 8'd5; sel = 3'b000;
    // Test SUB
    #10 sel = 3'b001;
    // Test AND
    #10 sel = 3'b010;
    // Test OR
    #10 sel = 3'b011;
    // Test XOR
    #10 sel = 3'b100;
    // Test NOT
    #10 sel = 3'b101;
    // Test SHIFT LEFT
    #10 sel = 3'b110;
    // Test SHIFT RIGHT
    #10 sel = 3'b111;
    // Test ZERO condition
    #10 A = 0; B = 0; sel = 3'b000;
    // Test carry
    #10 A = 8'd255; B = 8'd1; sel = 3'b000;

    #20;
    $finish;
end

endmodule
