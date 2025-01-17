#> hmmm:extended_float/32/exponential/main
#   Return e raised to a float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies hmmm_temp.[0..9]


scoreboard players set 0 hmmm_temp 1
execute if score P0 hmmm_io matches 0 if score P1 hmmm_io matches -127 if score P2 hmmm_io matches 0 run function hmmm:extended_float/32/exponential/one
execute if score 0 hmmm_temp matches 1 if score P0 hmmm_io matches 0 if score P1 hmmm_io matches 0 if score P2 hmmm_io matches 0 run function hmmm:extended_float/32/exponential/e
execute if score 0 hmmm_temp matches 1 run function hmmm:extended_float/32/exponential/non_zero