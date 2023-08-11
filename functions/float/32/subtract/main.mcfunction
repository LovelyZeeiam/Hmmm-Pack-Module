#> hmmm:float/32/subtract/main
#   Return the difference of two 32-bit floats
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
# @modifies hmmm_temp.[0..10]

scoreboard players add P3 hmmm_io 1
execute if score P3 hmmm_io matches 2 run scoreboard players set P3 hmmm_io 0

function hmmm:float/32/add/main