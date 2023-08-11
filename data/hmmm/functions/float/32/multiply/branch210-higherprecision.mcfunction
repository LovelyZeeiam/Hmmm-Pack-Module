#> hmmm:float/32/multiply/branch210-higherprecision
#   Multiply significands with higher precision. Seems to be identical.
#

# fix sign
scoreboard players set R0 hmmm_io 0
execute unless score 0 hmmm_temp = 3 hmmm_temp run scoreboard players set R0 hmmm_io 1

# add implicit bit
scoreboard players add 2 hmmm_temp 8388608
scoreboard players add 5 hmmm_temp 8388608

# set exponent
scoreboard players operation R1 hmmm_io = 1 hmmm_temp

# multiply using the factoring thing

# calculate ac
# get a and b (temp.0, hmmm_temp.1)
scoreboard players operation 0 hmmm_temp = 2 hmmm_temp
scoreboard players operation 1 hmmm_temp = 2 hmmm_temp
scoreboard players operation 0 hmmm_temp /= 4096 hmmm_constant
scoreboard players operation 1 hmmm_temp %= 4096 hmmm_constant

# get c and d (temp.2, hmmm_temp.3)
scoreboard players operation 2 hmmm_temp = 5 hmmm_temp
scoreboard players operation 3 hmmm_temp = 5 hmmm_temp
scoreboard players operation 2 hmmm_temp /= 4096 hmmm_constant
scoreboard players operation 3 hmmm_temp %= 4096 hmmm_constant

# set hmmm_io.R2 to ac
scoreboard players operation R2 hmmm_io = 0 hmmm_temp
scoreboard players operation R2 hmmm_io *= 2 hmmm_temp
scoreboard players operation R2 hmmm_io *= 2 hmmm_constant

# bc
# set hmmm_temp.5 to bc
scoreboard players operation 5 hmmm_temp = 1 hmmm_temp
scoreboard players operation 5 hmmm_temp *= 2 hmmm_temp

# ad
# set hmmm_temp.5 to ad
scoreboard players operation 6 hmmm_temp = 0 hmmm_temp
scoreboard players operation 6 hmmm_temp *= 3 hmmm_temp
# add to hmmm_temp.0
scoreboard players operation 5 hmmm_temp += 6 hmmm_temp
scoreboard players operation 5 hmmm_temp *= 64 hmmm_constant

# bd/2^12
# set hmmm_temp.5 to bd/2^12
scoreboard players operation 6 hmmm_temp = 1 hmmm_temp
scoreboard players operation 6 hmmm_temp *= 3 hmmm_temp
scoreboard players operation 6 hmmm_temp /= 64 hmmm_constant
# add to hmmm_temp.5
scoreboard players operation 5 hmmm_temp += 6 hmmm_temp

# right bitshift shift by 3
scoreboard players operation 5 hmmm_temp /= 131072 hmmm_constant
scoreboard players operation R2 hmmm_io += 5 hmmm_temp

execute if score R2 hmmm_io matches 16777216.. run function hmmm:float/32/multiply/branch2100


# remove implicit bit
scoreboard players remove R2 hmmm_io 8388608