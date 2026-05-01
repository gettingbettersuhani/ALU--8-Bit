`timescale 1ns / 1ps

module alu_8bit (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] sel,
    output reg [7:0] result,
    output reg carry,
    output zero
);

always @(*) begin
    carry = 0;

    case(sel)
        3'b000: {carry, result} = A + B;       // ADD
        3'b001: {carry, result} = A - B;       // SUB
        3'b010: result = A & B;                // AND
        3'b011: result = A | B;                // OR
        3'b100: result = A ^ B;                // XOR
        3'b101: result = ~A;                   // NOT
        3'b110: result = A << 1;               // SHIFT LEFT
        3'b111: result = A >> 1;               // SHIFT RIGHT
        default: result = 8'b00000000;
    endcase
end

assign zero = (result == 8'b00000000);

endmodule
