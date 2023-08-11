#> hmmm:float/32/convert/from_int/main
#   Return a 32-bit float representation of an integer
##
# @params
#   hmmm_io.P0
#       32-bit signed integer
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand

scoreboard players set R0 hmmm_io 0
execute if score P0 hmmm_io matches ..-1 run function hmmm:float/32/convert/from_int/negative

scoreboard players operation P2 hmmm_io = P0 hmmm_io
function hmmm:float/32/convert/from_int/b/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io

scoreboard players remove P2 hmmm_io 8388608

scoreboard players operation R1 hmmm_io = P1 hmmm_io
scoreboard players operation R2 hmmm_io = P2 hmmm_io