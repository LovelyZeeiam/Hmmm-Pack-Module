#> hmmm:float/32/add/branch1112
# remove sign from significand and put it in R0
scoreboard players operation R2 hmmm_io *= -1 constant
scoreboard players set R0 hmmm_io 1