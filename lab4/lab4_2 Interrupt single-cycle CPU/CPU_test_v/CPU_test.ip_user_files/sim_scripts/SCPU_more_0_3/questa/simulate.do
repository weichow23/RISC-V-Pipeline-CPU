onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SCPU_more_0_opt

do {wave.do}

view wave
view structure
view signals

do {SCPU_more_0.udo}

run -all

quit -force
