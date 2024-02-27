onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SCPU_1_opt

do {wave.do}

view wave
view structure
view signals

do {SCPU_1.udo}

run -all

quit -force
