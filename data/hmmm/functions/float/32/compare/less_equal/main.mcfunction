#> hmmm:float/32/compare/less_equal/main
#   Check whether the first number is less than or equal to the second
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   hmmm_io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R0
#       0 if false, 1 is true
#
scoreboard players set R0 hmmm_io 0
execute if score P0 hmmm_io matches 1 if score P3 hmmm_io matches 0 run scoreboard players set R0 hmmm_io 1
execute if score P0 hmmm_io = P3 hmmm_io run function hmmm:float/32/compare/less/branch0