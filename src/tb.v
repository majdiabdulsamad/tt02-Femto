// `include "Femto-top.v"
`default_nettype none

module tb_femto
(
input clk,
input [6:0] io_in,
output [7:0] io_out
);

femto_top
#(
    .OPSIZE(3), //Number of opcodes, power of 2 (3 => 2**3 = 8 opcodes)
    .NUMRF(2),  //Number of registers in register file, power of 2 (2 => 2**2 = 4 registers)
    .SIZE(4) //Size of data in bits
)
femtodut
(
    .io_in({io_in,clk}),
    .io_out(io_out)
);

// localparam CLK_PERIOD = 10;
// always #(CLK_PERIOD/2) io_in[0]=~io_in[0]; //IO input pin 0 = clk

initial begin
    $dumpfile("tb_femto.vcd");
    $dumpvars(0, tb_femto);
end

// initial begin
    
//     #(CLK_PERIOD*3) rst_n<=1;
//     #(CLK_PERIOD*3) rst_n<=0;clk<=0;
//     repeat(5) @(posedge clk);
//     rst_n<=1;
//     @(posedge clk);
//     repeat(2) @(posedge clk);
//     $finish(2);
// end

endmodule
`default_nettype wire