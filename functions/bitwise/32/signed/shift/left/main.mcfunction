#> hmmm:bitwise/32/signed/shift/left/main
#   Performs a leftwards bitwise shift
##
# @params
#   hmmm_io.P0
#       32-bit integers
# @returns
#   hmmm_io.R0
#       32-bit integer
##

scoreboard players set 0 hmmm_temp 0
execute if score P0 hmmm_io matches ..-1 run function hmmm:bitwise/32/signed/shift/remove_sign

scoreboard players operation R0 hmmm_io = P0 hmmm_io
scoreboard players operation R0 hmmm_io *= 2 hmmm_constant