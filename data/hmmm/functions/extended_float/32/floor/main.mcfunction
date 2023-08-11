#> hmmm:extended_float/32/floor/main
#   Returns a floored float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies hmmm_temp.[0..10] (if input is negative)

scoreboard players operation R0 hmmm_io = P0 hmmm_io
scoreboard players operation R1 hmmm_io = P1 hmmm_io
scoreboard players operation R2 hmmm_io = P2 hmmm_io

execute if score P1 hmmm_io matches 0..22 run function hmmm:extended_float/32/floor/truncate

scoreboard players set 0 hmmm_temp 1
execute if score P0 hmmm_io matches 0 if score P1 hmmm_io matches ..-1 run function hmmm:extended_float/32/floor/zero

execute if score P0 hmmm_io matches 1 if score P1 hmmm_io matches ..-1 run function hmmm:extended_float/32/floor/n_one
execute if score 0 hmmm_temp matches 1 if score R0 hmmm_io matches 1 if score P1 hmmm_io matches ..22 unless score P2 hmmm_io matches 0 run function hmmm:extended_float/32/floor/sub_1