#> hmmm:float/32/multiply/branch1
#   Return 0
#

scoreboard players set R0 hmmm_io 0
# neg zero if signs are different
execute unless score 0 temp = 3 temp run scoreboard players set R0 hmmm_io 1
scoreboard players set R1 hmmm_io -127
scoreboard players set R2 hmmm_io 0