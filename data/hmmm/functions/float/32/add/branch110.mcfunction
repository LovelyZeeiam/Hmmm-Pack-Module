#> hmmm:float/32/add/branch110
# set larger float to F0, smaller float to F1

# increment smaller exponent, shift significant right
function hmmm:float/32/add/branch1101

# if significand is 0, return F0
scoreboard players operation R0 hmmm_io = 0 hmmm_temp
scoreboard players operation R1 hmmm_io = 1 hmmm_temp
scoreboard players operation R2 hmmm_io = 2 hmmm_temp

# if significand is not 0, repeat from branch11
execute unless score 7 hmmm_temp matches 0 run function hmmm:float/32/add/branch11