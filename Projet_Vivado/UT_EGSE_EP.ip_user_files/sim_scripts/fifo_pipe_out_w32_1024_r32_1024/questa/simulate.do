onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_pipe_out_w32_1024_r32_1024_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_pipe_out_w32_1024_r32_1024.udo}

run -all

quit -force
