#> hmmm:extended_float/32/root/negative_radicand
#   Case when the radicand is negative
#

scoreboard players operation 0 hmmm_temp = P0 hmmm_io
scoreboard players operation 1 hmmm_temp = P1 hmmm_io
scoreboard players operation 2 hmmm_temp = P2 hmmm_io

scoreboard players operation P0 hmmm_io = 12 hmmm_temp
scoreboard players operation P1 hmmm_io = 13 hmmm_temp
scoreboard players operation P2 hmmm_io = 14 hmmm_temp

function hmmm:extended_float/32/float_type/main
scoreboard players operation 3 hmmm_temp = R0 hmmm_io
execute unless score 3 hmmm_temp matches 1 run function hmmm:extended_float/32/power/nan
execute if score 3 hmmm_temp matches 1 run function hmmm:extended_float/32/power/int
