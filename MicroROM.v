
module MicroROM(state, microinstruction);

  input [3:0] state; 
  reg [16:0] ROM[15:0];
  output wire [15:0] microinstruction;

  ///////////////////////////////////////////////////////
  // PUT MICROINSTRUCTIONS HERE
  initial begin
  ROM[4'b0000] = 		16'b1000100000010001;	//0

  ROM[4'b0001] =		16'b0000000000110000;	//1

  ROM[4'b0010] =		16'b0000000000101000;	//2

  ROM[4'b0011] =		16'b0010000000000001; 	//3

  ROM[4'b0100] =		16'b0000010000000100;	//4

  ROM[4'b0101] =		16'b0011000000000000;	//5

  ROM[4'b0110] =	16'b0000000010001001; 	//6

  ROM[4'b0111] = 	16'b0000000000000110; 	//7

  ROM[4'b1000] = 		16'b0100000101001000;	//8

  ROM[4'b1001] = 		16'b1000001000000000;	//9


  ////////////////////////////////////////////////////////////////////////
  end

  //always  @*
  assign microinstruction = ROM[state];

endmodule