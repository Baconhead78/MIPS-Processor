module instructionMemory(pc,instruction);
input [31:0] pc;
output [31:0] instruction;
reg [31:0] program_instructions [0:63];

initial
	$readmemb("program_instructions.txt",program_instructions);

assign instruction = program_instructions[pc];

endmodule