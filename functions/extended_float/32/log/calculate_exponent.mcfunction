#> hmmm:extended_float/32/log/calculate_exponent
#   Calculate the next exponent by multiplying the previous exponent by (ax-1)

scoreboard players operation P0 hmmm_io = 14 hmmm_temp
scoreboard players operation P1 hmmm_io = 15 hmmm_temp
scoreboard players operation P2 hmmm_io = 16 hmmm_temp

scoreboard players operation P3 hmmm_io = 17 hmmm_temp
scoreboard players operation P4 hmmm_io = 18 hmmm_temp
scoreboard players operation P5 hmmm_io = 19 hmmm_temp
function hmmm:float/32/multiply/main

# copy result to hmmm_temp.[17..19]
scoreboard players operation 17 hmmm_temp = R0 hmmm_io
scoreboard players operation 18 hmmm_temp = R1 hmmm_io
scoreboard players operation 19 hmmm_temp = R2 hmmm_io