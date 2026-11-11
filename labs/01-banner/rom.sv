module rom (
  input  logic [31:0] a,
  output logic [31:0] rd);

  logic  [31:0] ROM [0:255];

  // initialize memory with instructions
  initial begin
    ROM[ 0] = 32'h12000293; // addi t0, zero, 0x120
    ROM[ 1] = 32'h10400313; // addi t1, zero, 0x104
    ROM[ 2] = 32'h0002A383; // lw t2, (t0)
    ROM[ 3] = 32'h00732023; // sw t2, (t1)
    ROM[ 4] = 32'hFF9FF06F; // j loop
  end

  assign rd = ROM[a[31:2]]; // word aligned
endmodule
