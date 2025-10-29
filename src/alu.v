module alu (
    input  [31:0] a,
    input  [31:0] b,
    input  [3:0]  alu_op,
    output reg [31:0] result,
    output zero,
    output reg negative,
    output reg overflow,
    output reg carry
);
reg [32:0] temp; 
always @(*) begin
    result   = 32'b0;
    carry    = 1'b0;
    overflow = 1'b0;
    negative = 1'b0;
 case (alu_op)
     4'b0000: begin 
     temp     = {1'b0, a} + {1'b0, b};
     result   = temp[31:0];
     carry    = temp[32];
     overflow = (~a[31] & ~b[31] & result[31]) | (a[31] & b[31] & ~result[31]);
 end   
 4'b1000: begin 
     temp     = {1'b0, a} - {1'b0, b};
     result   = temp[31:0];
     carry    = ~temp[32];
     overflow = (a[31] & ~b[31] & ~result[31]) | (~a[31] & b[31] & result[31]);
 end

     4'b0001: result = a << b[4:0];                        // SLL
     4'b0010: result = ($signed(a) < $signed(b)) ? 1 : 0;  // SLT
     4'b0011: result = (a < b) ? 1 : 0;                    // SLTU
     4'b0100: result = a ^ b;                              // XOR
     4'b0101: result = a >> b[4:0];                        // SRL
     4'b1101: result = $signed(a) >>> b[4:0];              // SRA
     4'b0110: result = a | b;                              // OR
     4'b0111: result = a & b;                              // AND
     default: result = 32'b0;
       endcase
       negative = result[31];
 end
assign zero = (result == 32'b0);
endmodule

