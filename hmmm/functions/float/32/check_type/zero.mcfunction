#> hmmm:float/32/check_type/zero
#   branch for zeros
##

execute if score P0 hmmm_io matches 0 run scoreboard players set R0 hmmm_io 3
execute if score P0 hmmm_io matches 1 run scoreboard players set R0 hmmm_io 4