#> hmmm:extended_float/32/power/positive_base
#   Case when the base is positive
#

scoreboard players operation 23 temp = P3 hmmm_io
scoreboard players operation 24 temp = P4 hmmm_io
scoreboard players operation 25 temp = P5 hmmm_io

function hmmm:extended_float/32/log/main

scoreboard players set 0 temp 1
execute if score R0 hmmm_io matches 1 if score R1 hmmm_io matches 128 if score R2 hmmm_io matches 0 run function hmmm:extended_float/32/power/zero
execute if score 0 temp matches 1 run function hmmm:extended_float/32/power/not_zero

scoreboard players set 0 temp 0