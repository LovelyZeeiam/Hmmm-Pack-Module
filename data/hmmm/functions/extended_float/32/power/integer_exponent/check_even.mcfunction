#> hmmm:extended_float/32/power/integer_exponent/check_even
#   Case when the exponent is even or odd
#
scoreboard players operation 0 hmmm_temp = P0 hmmm_io
scoreboard players operation 1 hmmm_temp = P1 hmmm_io
scoreboard players operation 2 hmmm_temp = P2 hmmm_io

scoreboard players operation 3 hmmm_temp = P3 hmmm_io
scoreboard players operation 4 hmmm_temp = P4 hmmm_io
scoreboard players operation 5 hmmm_temp = P5 hmmm_io

scoreboard players operation P0 hmmm_io = P3 hmmm_io
scoreboard players operation P1 hmmm_io = P4 hmmm_io
scoreboard players operation P2 hmmm_io = P5 hmmm_io

function hmmm:extended_float/32/float_type/main

scoreboard players operation P0 hmmm_io = 0 hmmm_temp
scoreboard players operation P1 hmmm_io = 1 hmmm_temp
scoreboard players operation P2 hmmm_io = 2 hmmm_temp

scoreboard players operation P3 hmmm_io = 3 hmmm_temp
scoreboard players operation P4 hmmm_io = 4 hmmm_temp
scoreboard players operation P5 hmmm_io = 5 hmmm_temp

scoreboard players set 0 hmmm_temp 1
# assume decimals are even
execute if score R0 hmmm_io matches 0 run function hmmm:extended_float/32/power/integer_exponent/even
execute if score 0 hmmm_temp matches 1 if score R0 hmmm_io matches 1 run function hmmm:extended_float/32/power/integer_exponent/odd
execute if score 0 hmmm_temp matches 1 if score R0 hmmm_io matches 2 run say ERROR: exponent somehow not an integer
scoreboard players set 0 hmmm_temp 0