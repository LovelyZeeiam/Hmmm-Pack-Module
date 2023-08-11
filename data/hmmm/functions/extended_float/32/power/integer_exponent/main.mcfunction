#> hmmm:extended_float/32/power/integer_exponent/main
#   Case when the exponent is an integer
#
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   hmmm_io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand

scoreboard players set 0 temp 1
execute if score P4 hmmm_io matches ..-1 run function hmmm:extended_float/32/power/integer_exponent/zero
execute if score 0 temp matches 1 if score P3 hmmm_io matches 1 run function hmmm:extended_float/32/power/integer_exponent/negative
execute if score 0 temp matches 1 if score P4 hmmm_io matches 0 run function hmmm:extended_float/32/power/integer_exponent/one
execute if score 0 temp matches 1 run function hmmm:extended_float/32/power/integer_exponent/check_even

scoreboard players set 0 temp 0