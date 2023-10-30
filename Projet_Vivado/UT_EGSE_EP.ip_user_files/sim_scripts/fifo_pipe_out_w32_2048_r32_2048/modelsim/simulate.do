onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L fifo_generator_v13_2_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.fifo_pipe_out_w32_2048_r32_2048 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {fifo_pipe_out_w32_2048_r32_2048.udo}

run -all

quit -force
