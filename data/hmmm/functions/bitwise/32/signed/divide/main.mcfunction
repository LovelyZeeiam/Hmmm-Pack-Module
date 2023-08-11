#> hmmm:bitwise/32/signed/divide/main
#   Return the signed quotient of hmmm_io.P[0, 1]
##
# @params
#   hmmm_io.P[0, 1]
#       Two 32-bit integers
# @returns
#   hmmm_io.R0
#       32-bit integer
##

scoreboard players operation R0 hmmm_io = P0 hmmm_io
scoreboard players operation R0 hmmm_io /= P1 hmmm_io