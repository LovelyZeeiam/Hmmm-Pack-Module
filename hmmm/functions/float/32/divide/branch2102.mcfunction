#> hmmm:float/32/divide/branch2102
#   Recursive long division
#

scoreboard players operation R2 hmmm_io *= 2 hmmm_constant
execute if score 0 hmmm_temp >= 1 hmmm_temp run function hmmm:float/32/divide/branch2100

scoreboard players operation 0 hmmm_temp *= 2 hmmm_constant
