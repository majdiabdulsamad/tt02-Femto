SIM ?= icarus
TOPLEVEL_LANG ?= verilog

VERILOG_SOURCES += $(PWD)/tb.v $(PWD)/ALU.v $(PWD)/decoder.v $(PWD)/reg_file.v $(PWD)/Femto-top.v

TOPLEVEL = tb_femto

MODULE = femto_test

include $(shell cocotb-config --makefiles)/Makefile.sim
