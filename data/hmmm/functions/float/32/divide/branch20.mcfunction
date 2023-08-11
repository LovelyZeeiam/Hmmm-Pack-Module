#> hmmm:float/32/divide/branch20
#   Set to infinity
#

scoreboard players set 8 hmmm_temp 1

scoreboard players set R0 hmmm_io 0
# neg infinity if signs are different
execute unless score 0 hmmm_temp = 3 hmmm_temp run scoreboard players set R0 hmmm_io 1
scoreboard players set R1 hmmm_io 128
scoreboard players set R2 hmmm_io 0