module reg_file #(
    parameter NUMRF = 2,
    parameter  SIZE = 8
) (
    input  wire clk,rd,wr,
    input  wire[NUMRF-1:0]  reg_out, reg_in,
    input  wire[SIZE-1:0]  data_in,
    output  reg[SIZE-1:0]  data_out
);
    reg [SIZE-1:0] regfile[(1<<NUMRF)-1:0];

    //Synch Write
    always @(posedge clk) begin
        if(wr==1) regfile[reg_in]<=data_in;
        // if(rd==1) data_out<=regfile[reg_out];
        // else      data_out<={reg_out,reg_in};
    end
    //Asynch Read
    assign data_out=(rd==1)?regfile[reg_out]:{reg_out,reg_in};
    // assign data_0=regfile[reg_0],
    //        data_1=regfile[reg_1];

endmodule