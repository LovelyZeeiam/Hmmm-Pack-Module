#> hmmm:extended_float/32/power/negative_base
#   Case when the base is negative
#

scoreboard players operation 0 temp = P0 hmmm_io
scoreboard players operation 1 temp = P1 hmmm_io
scoreboard players operation 2 temp = P2 hmmm_io

scoreboard players operation P0 hmmm_io = P3 hmmm_io
scoreboard players operation P1 hmmm_io = P4 hmmm_io
scoreboard players operation P2 hmmm_io = P5 hmmm_io

function hmmm:extended_float/32/float_type/main
scoreboard players operation 3 temp = R0 hmmm_io
execute if score 3 temp matches 2 run function hmmm:extended_float/32/power/nan
execute if score 3 temp matches 0..1 run function hmmm:extended_float/32/power/int