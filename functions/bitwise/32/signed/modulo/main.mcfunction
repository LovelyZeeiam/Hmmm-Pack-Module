#> hmmm:bitwise/32/signed/modulo/main
#   Return the signed modulo of hmmm_io.P[0, 1]
##
# @params
#   hmmm_io.F0 = [0, 1]
#       Whether the 32-bit integers are signed or unsigned
#   hmmm_io.P[0, 1]
#       Two 32-bit integers
# @returns
#   hmmm_io.R0
#       32-bit integer
##

scoreboard players operation R0 hmmm_io = P0 hmmm_io
scoreboard players operation R0 hmmm_io %= P1 hmmm_io