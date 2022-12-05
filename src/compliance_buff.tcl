force -freeze sim:/femto_top/io_in[0] 1 0, 0 {50 ps} -r 100
#SET TO IDLE
force -freeze sim:/femto_top/io_in[3:1] 000 0
force -freeze sim:/femto_top/io_in[5:4] 00 0
force -freeze sim:/femto_top/io_in[7:6] 10 0
run
#SET TO FILL
force -freeze sim:/femto_top/io_in[3:1] 000 0
force -freeze sim:/femto_top/io_in[5:4] 10 0
force -freeze sim:/femto_top/io_in[7:6] 10 0
run
#Write instr
force -freeze sim:/femto_top/io_in[3:1] 001 0
force -freeze sim:/femto_top/io_in[5:4] 00 0
force -freeze sim:/femto_top/io_in[7:6] 00 0
run
#Write instr
force -freeze sim:/femto_top/io_in[3:1] 110 0
force -freeze sim:/femto_top/io_in[5:4] 00 0
force -freeze sim:/femto_top/io_in[7:6] 00 0
run
#Write instr
force -freeze sim:/femto_top/io_in[3:1] 111 0
force -freeze sim:/femto_top/io_in[5:4] 00 0
force -freeze sim:/femto_top/io_in[7:6] 00 0
run
#Write instr
force -freeze sim:/femto_top/io_in[3:1] 001 0
force -freeze sim:/femto_top/io_in[5:4] 01 0
force -freeze sim:/femto_top/io_in[7:6] 00 0
run
#Write instr
force -freeze sim:/femto_top/io_in[3:1] 110 0
force -freeze sim:/femto_top/io_in[5:4] 01 0
force -freeze sim:/femto_top/io_in[7:6] 00 0
run
#Write instr
force -freeze sim:/femto_top/io_in[3:1] 111 0
force -freeze sim:/femto_top/io_in[5:4] 00 0
force -freeze sim:/femto_top/io_in[7:6] 01 0
run
#SET TO RUN
force -freeze sim:/femto_top/io_in[3:1] 000 0
force -freeze sim:/femto_top/io_in[5:4] 01 0
force -freeze sim:/femto_top/io_in[7:6] 10 0
run
#CLEAR
force -freeze sim:/femto_top/io_in[3:1] 000 0
force -freeze sim:/femto_top/io_in[5:4] 00 0
force -freeze sim:/femto_top/io_in[7:6] 00 0
run
run
run
run
run
run
#CLEAR
force -freeze sim:/femto_top/io_in[3:1] 000 0
force -freeze sim:/femto_top/io_in[5:4] 00 0
force -freeze sim:/femto_top/io_in[7:6] 10 0
run
