#> hmmm:extended_float/32/log/main
#   Return the natural logarithm of a float
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
##
#   F0 = hmmm_temp.[0, 1, 2], hmmm_io.P[0, 1, 2]
#   F1 = hmmm_temp.[3, 4, 5], hmmm_io.P[3, 4, 5]
##
# @modifies hmmm_temp.[0..22]


# copy variables hmmm_io.P[0..5], hmmm_temp.[0..10]
# execute store result storage hmmm:variables hmmm_temp int 1 run scoreboard players get P0 hmmm_io
# data modify storage hmmm:variables hmmm_temp_stack append from storage hmmm:variables hmmm_temp
# execute store result storage hmmm:variables hmmm_temp int 1 run scoreboard players get P1 hmmm_io
# data modify storage hmmm:variables hmmm_temp_stack append from storage hmmm:variables hmmm_temp
# execute store result storage hmmm:variables hmmm_temp int 1 run scoreboard players get P2 hmmm_io
# data modify storage hmmm:variables hmmm_temp_stack append from storage hmmm:variables hmmm_temp
scoreboard players set 0 hmmm_temp 1
execute if score P0 hmmm_io matches 1 run function hmmm:extended_float/32/log/negative
execute if score 0 hmmm_temp matches 1 if score P0 hmmm_io matches 0 if score P1 hmmm_io matches -127 if score P2 hmmm_io matches 0 run function hmmm:extended_float/32/log/zero
execute if score 0 hmmm_temp matches 1 if score P0 hmmm_io matches 0 run function hmmm:extended_float/32/log/positive