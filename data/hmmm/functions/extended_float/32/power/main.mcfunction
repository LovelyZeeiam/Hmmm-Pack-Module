#> hmmm:extended_float/32/power/main
#   Return the first 32-bit float raised to the power of the second.
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   hmmm_io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies temp.[0..25]
scoreboard players operation 0 temp = P0 hmmm_io
scoreboard players operation 1 temp = P1 hmmm_io
scoreboard players operation 2 temp = P2 hmmm_io

scoreboard players operation 3 temp = P3 hmmm_io
scoreboard players operation 4 temp = P4 hmmm_io
scoreboard players operation 5 temp = P5 hmmm_io

scoreboard players operation P0 hmmm_io = P3 hmmm_io
scoreboard players operation P1 hmmm_io = P4 hmmm_io
scoreboard players operation P2 hmmm_io = P5 hmmm_io

function hmmm:extended_float/32/float_type/main

scoreboard players operation P0 hmmm_io = 0 temp
scoreboard players operation P1 hmmm_io = 1 temp
scoreboard players operation P2 hmmm_io = 2 temp

scoreboard players operation P3 hmmm_io = 3 temp
scoreboard players operation P4 hmmm_io = 4 temp
scoreboard players operation P5 hmmm_io = 5 temp

scoreboard players set 0 temp 1
execute if score R0 hmmm_io matches 2 run function hmmm:extended_float/32/power/not_integer_exponent/main
execute if score 0 temp matches 1 run function hmmm:extended_float/32/power/integer_exponent/main