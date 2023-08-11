#> hmmm:extended_float/32/power/integer_exponent/negative
#   Case when the exponent is negative
#

scoreboard players operation 9 hmmm_temp = P3 hmmm_io
scoreboard players operation 10 hmmm_temp = P4 hmmm_io
scoreboard players operation 11 hmmm_temp = P5 hmmm_io

scoreboard players operation P3 hmmm_io = P0 hmmm_io
scoreboard players operation P4 hmmm_io = P1 hmmm_io
scoreboard players operation P5 hmmm_io = P2 hmmm_io

scoreboard players set P0 hmmm_io 0
scoreboard players set P1 hmmm_io 0
scoreboard players set P2 hmmm_io 0

function hmmm:float/32/divide/main

scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players operation P4 hmmm_io = 10 hmmm_temp
scoreboard players operation P5 hmmm_io = 11 hmmm_temp

function hmmm:extended_float/32/power/integer_exponent/main

scoreboard players set 0 hmmm_temp 0