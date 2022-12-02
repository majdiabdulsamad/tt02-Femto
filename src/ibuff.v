module ibuffer 
#(
    parameter ENTRIES=6
)
(
    input wire      clk, wren, rden,
    input wire[6:0]  instr_in,
    output reg[6:0] instr_out
);
reg[6:0] ibuffer_inst[ENTRIES-1:0];
integer i;
always @(posedge clk) begin
    if(wren==1) 
    begin
        for(i=ENTRIES-1;i>0;i=i-1)
        begin
            ibuffer_inst[i]<=ibuffer_inst[i-1];
        end
        ibuffer_inst[0]<=instr_in;
        instr_out<={7{1'b0}};
    end
    else if(rden==1)
    begin
        instr_out<=ibuffer_inst[ENTRIES-1];
        for(i=ENTRIES-1;i>0;i=i-1)
        begin
            ibuffer_inst[i]<=ibuffer_inst[i-1];
        end
        ibuffer_inst[0]<={7{1'b0}};
    end
    else
        instr_out<={7{1'b0}};
end

endmodule