#> hmmm:float/32/add/branch111
# exponents are equal

# F0 = hmmm_io.R[0, 1, 2], temp.[0, 1, 2], F1 = temp.[3, 4, 5]

# set hmmm_io.R[-, 1, 3] to F0. Set R0 to 0
scoreboard players set R0 hmmm_io 0
scoreboard players operation R1 hmmm_io = 1 temp
scoreboard players operation R2 hmmm_io = 3 temp

# add signs
execute if score 0 temp matches 1 run scoreboard players operation R2 hmmm_io *= -1 constant
execute if score 4 temp matches 1 run scoreboard players operation 7 temp *= -1 constant


# add significands
scoreboard players operation R2 hmmm_io += 7 temp

# remove sign from significands
execute if score R2 hmmm_io matches ..-1 run function hmmm:float/32/add/branch1112


# if sum of significands are 0, output 0
execute if score R2 hmmm_io matches 0 run function hmmm:float/32/add/branch1110

# check for significand overflow
execute unless score R2 hmmm_io matches 0 run function hmmm:float/32/add/branch1111

scoreboard players set 7 temp 0