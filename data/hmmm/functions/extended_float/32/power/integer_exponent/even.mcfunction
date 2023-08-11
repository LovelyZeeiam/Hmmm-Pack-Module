#> hmmm:extended_float/32/power/integer_exponent/even
#   Case when the exponent is even
#

scoreboard players operation 9 temp = P3 hmmm_io
scoreboard players operation 10 temp = P4 hmmm_io
scoreboard players operation 11 temp = P5 hmmm_io

scoreboard players operation P3 hmmm_io = P0 hmmm_io
scoreboard players operation P4 hmmm_io = P1 hmmm_io
scoreboard players operation P5 hmmm_io = P2 hmmm_io

function hmmm:float/32/multiply/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 9 temp
scoreboard players operation P4 hmmm_io = 10 temp
scoreboard players remove P4 hmmm_io 1
scoreboard players operation P5 hmmm_io = 11 temp

function hmmm:extended_float/32/power/integer_exponent/main

scoreboard players set 0 temp 0