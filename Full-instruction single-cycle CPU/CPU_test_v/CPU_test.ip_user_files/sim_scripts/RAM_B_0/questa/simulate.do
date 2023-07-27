onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RAM_B_0_opt

do {wave.do}

view wave
view structure
view signals

do {RAM_B_0.udo}

run -all

quit -force
