#> bitwise:32/signed/modulo/main
#
# Return the signed modulo of IO.P{0, 1}
#
# @params
#   IO.P{0, 1}
#       Two 32-bit integers
# @returns
#   IO.R0
#       32-bit integer
#

scoreboard players operation R0 IO = P0 IO
scoreboard players operation R0 IO %= P1 IO