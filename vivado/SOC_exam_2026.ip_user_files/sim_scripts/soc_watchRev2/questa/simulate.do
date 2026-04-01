onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib soc_watchRev2_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {soc_watchRev2.udo}

run 1000ns

quit -force
