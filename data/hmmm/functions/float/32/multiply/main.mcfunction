#> hmmm:float/32/multiply/main
#   Return the product of two 32-bit floats
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   hmmm_io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
##
# @modifies hmmm_temp.[0..8]

# make a copy of everything
scoreboard players operation 0 hmmm_temp = P0 hmmm_io
scoreboard players operation 1 hmmm_temp = P1 hmmm_io
scoreboard players operation 2 hmmm_temp = P2 hmmm_io

scoreboard players operation 3 hmmm_temp = P3 hmmm_io
scoreboard players operation 4 hmmm_temp = P4 hmmm_io
scoreboard players operation 5 hmmm_temp = P5 hmmm_io

# check types for both
function hmmm:float/32/check_type/main
scoreboard players operation 6 hmmm_temp = R0 hmmm_io

scoreboard players operation P0 hmmm_io = 3 hmmm_temp
scoreboard players operation P1 hmmm_io = 4 hmmm_temp
scoreboard players operation P2 hmmm_io = 5 hmmm_temp

function hmmm:float/32/check_type/main
scoreboard players operation 7 hmmm_temp = R0 hmmm_io

# if...else handler
scoreboard players set 8 hmmm_temp 0

# check both are not NaN
execute if score 6 hmmm_temp matches 0 run scoreboard players set 8 hmmm_temp 1
execute if score 7 hmmm_temp matches 0 run scoreboard players set 8 hmmm_temp 1

execute if score 8 hmmm_temp matches 1 run function hmmm:float/32/multiply/exception/nan
execute if score 8 hmmm_temp matches 0 run function hmmm:float/32/multiply/branch0

