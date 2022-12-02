module alu_gen 
#(
    parameter OPSIZE = 3,
    parameter SIZE = 8
)
(
    input clk,
    input  [OPSIZE-1:0]     op,
    input  [SIZE-1:0]      inp,
    output wire[SIZE-1:0] outp
);
reg [SIZE-1:0] inter;
reg [SIZE-1:0] acc;
always @(*) begin
   case (op)
        // 3'h0:                //NOP
        // 3'h1:                //LOAD IMMEDIATE 
        3'h2: inter= inp + acc; //ADD
        3'h3: inter=~inp;       //NOT
        3'h4: inter= inp & acc; //AND
        3'h5: inter= inp ^ acc; //XOR
        3'h6: inter= acc;       //STORE ACC
        // 3'h7:                //DISPLAY
     default: inter=inp;         //DEFAULT: RETURN INPUT VALUE
    endcase
end

always @(posedge clk) begin
    if(((op==0&&inp[3-:2]==2'h1)||op!=0)&&op!=((1<<OPSIZE)-1)) acc<=inter; //STORE TO ACC ONLY WHEN WE HAVE AN ARITHMETIC OPERATION //op[2] ^ op[1]  //(!(~op[1:0]))|(~|op)
end

assign outp=inter;

endmodule
