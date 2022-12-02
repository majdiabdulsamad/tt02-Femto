force -freeze sim:/femto_top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/femto_top/op 000 0
force -freeze sim:/femto_top/reg_0 00 0
force -freeze sim:/femto_top/reg_1 00 0
force -freeze sim:/femto_top/extra 00 0
run
#LOADACC
force -freeze sim:/femto_top/op 001 0
force -freeze sim:/femto_top/reg_0 11 0
run
#STOREACC
force -freeze sim:/femto_top/op 110 0
force -freeze sim:/femto_top/reg_0 00 0
run
#force -freeze sim:/femto_top/op 000 0
force -freeze sim:/femto_top/op 001 0
force -freeze sim:/femto_top/reg_0 11 0
force -freeze sim:/femto_top/reg_1 11 0