#> hmmm:float/32/add/branch10
#   Sets hmmm_io.R[0, 1, 2] to hmmm_io.P[0, 1, 2]
##

scoreboard players operation R0 hmmm_io = 0 hmmm_temp
scoreboard players operation R1 hmmm_io = 1 hmmm_temp
scoreboard players operation R2 hmmm_io = 2 hmmm_temp

scoreboard players set 8 hmmm_temp 1