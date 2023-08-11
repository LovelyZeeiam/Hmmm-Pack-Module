# Use inverse of fast inverse sqrt
scoreboard players operation P0 hmmm_io = P3 hmmm_io
scoreboard players operation P1 hmmm_io = P4 hmmm_io
scoreboard players operation P2 hmmm_io = P5 hmmm_io

function hmmm:extended_float/32/fast_inverse_sqrt/main

scoreboard players set P0 hmmm_io 0
scoreboard players set P1 hmmm_io 0
scoreboard players set P2 hmmm_io 0

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io

function hmmm:float/32/divide/main

scoreboard players set 0 hmmm_temp 0