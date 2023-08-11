#> hmmm:float/32/add/main
#   Return the sum of two 32-bit floats
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
#   F0 = hmmm_temp.[0, 1, 2], hmmm_io.P[0, 1, 2]
#   F1 = hmmm_temp.[3, 4, 5], hmmm_io.P[3, 4, 5]
##
# @modifies hmmm_temp.[0..10]

# maintain a copy of the inputs
scoreboard players operation 0 hmmm_temp = P0 hmmm_io
scoreboard players operation 1 hmmm_temp = P1 hmmm_io
scoreboard players operation 2 hmmm_temp = P2 hmmm_io
scoreboard players operation 3 hmmm_temp = P2 hmmm_io

scoreboard players operation 4 hmmm_temp = P3 hmmm_io
scoreboard players operation 5 hmmm_temp = P4 hmmm_io
scoreboard players operation 6 hmmm_temp = P5 hmmm_io
scoreboard players operation 7 hmmm_temp = P5 hmmm_io

# add the implicit leading bit if the exponent is not -127. If it is, add 1 to exponent and end. TODO did I do this? <-
execute unless score 1 hmmm_temp matches -127 run scoreboard players add 3 hmmm_temp 8388608

execute unless score 5 hmmm_temp matches -127 run scoreboard players add 7 hmmm_temp 8388608

# if... else handler. If hmmm_temp.8 = 1, end.
scoreboard players set 8 hmmm_temp 0

# check whether F0 is NaN, infinity, or 0
function hmmm:float/32/check_type/main

# nan exception
execute if score R0 hmmm_io matches 0 run function hmmm:float/32/add/exception/nan

# return F1 if F0 is 0
execute if score R0 hmmm_io matches 3..4 run function hmmm:float/32/add/branch0

# other case
execute if score 8 hmmm_temp matches 0 run function hmmm:float/32/add/branch1