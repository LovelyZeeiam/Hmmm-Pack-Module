#> hmmm:extended_float/32/asin/main
#   Return the arcsine of the 32-bit float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies temp.[0..19]

scoreboard players set 0 temp 1
execute if score P1 hmmm_io matches 1.. run function hmmm:extended_float/32/asin/nan
execute if score P1 hmmm_io matches 0 if score P2 hmmm_io matches 1.. run function hmmm:extended_float/32/asin/nan
execute if score P1 hmmm_io matches 0 if score P2 hmmm_io matches 0 run function hmmm:extended_float/32/asin/half_pi
execute if score 0 temp matches 1 run function hmmm:extended_float/32/asin/in_bounds
