import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

def printregs(dut):
    print("REGFILE CONTENTS:\n",dut.femtodut.rf.regfile.value)

@cocotb.test()
async def test_my_design(dut):
    dut._log.info("start")
    clock = Clock(dut.clk, 0.2, units="ms")
    cocotb.start_soon(clock.start())
    await ClockCycles(dut.clk, 1)
    dut.io_in.value = int("1010000",base=2) #SET TO FILL
    await ClockCycles(dut.clk, 1)
    dut.io_in.value = int("0000001",base=2) #Write instr LOADACCI 0 (RESET ACC)
    await ClockCycles(dut.clk, 1)
    dut.io_in.value = int("0000110",base=2) #Write instr STOREACC
    await ClockCycles(dut.clk, 1)
    dut.io_in.value = int("0000111",base=2) #Write instr DISPLAY $0
    await ClockCycles(dut.clk, 1)
    dut.io_in.value = int("0001001",base=2) #Write instr LOADACCI 1
    await ClockCycles(dut.clk, 1)
    dut.io_in.value = int("0001110",base=2) #Write instr
    await ClockCycles(dut.clk, 1)
    dut.io_in.value = int("0100111",base=2) #Write instr
    await ClockCycles(dut.clk, 1)
    dut.io_in.value = int("1001000",base=2) #SET TO RUN
    await ClockCycles(dut.clk, 1)
    dut.io_in.value = int("0000000",base=2) #CLEAR INPUT
    await ClockCycles(dut.clk, 6)
    print("ACC VALUE =",dut.femtodut.alu.acc.value)
    printregs(dut)
    print("LCD DISPLAY =",dut.io_out.value)
