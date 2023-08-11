#> hmmm:bitwise/32/unsigned/divmod/b1
#   branch from hmmm:bitwise/32/unsigned/divmod/main
##
# hmmm_io.R0 = div
# hmmm_io.R1 = mod
##

scoreboard players set R0 hmmm_io 0
execute if score P1 hmmm_io <= R0 hmmm_io if score P1 hmmm_io matches ..-1 run scoreboard players set R0 hmmm_io 1

scoreboard players operation R1 hmmm_io = P0 hmmm_io
execute if score R0 hmmm_io matches 0 run scoreboard players operation R0 hmmm_io -= P1 hmmm_io