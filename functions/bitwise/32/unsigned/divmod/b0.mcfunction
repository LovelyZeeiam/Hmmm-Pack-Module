#> hmmm:bitwise/32/unsigned/divmod/b0
#   branch from hmmm:bitwise/32/unsigned/divmod/main
##
# hmmm_io.R0 = div
# hmmm_io.R1 = mod
##

execute if score R0 hmmm_io matches ..-1 run function hmmm:bitwise/32/unsigned/divmod/b00
scoreboard players operation R1 hmmm_io = R0 hmmm_io
scoreboard players operation R1 hmmm_io %= P1 hmmm_io
scoreboard players operation R0 hmmm_io /= P1 hmmm_io

execute if score P0 hmmm_io matches ..-1 run function hmmm:bitwise/32/unsigned/divmod/b01