onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_pipe_out_w32_2048_r32_2048_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_pipe_out_w32_2048_r32_2048.udo}

run -all

quit -force
