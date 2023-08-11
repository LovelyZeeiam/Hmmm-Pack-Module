#> hmmm:float/32/multiply/branch21
#   Add exponents
#

# add exponents, adjust for bias
execute if score 1 hmmm_temp matches -127 run scoreboard players set 8 hmmm_temp 1
execute if score 1 hmmm_temp matches -127 run scoreboard players add 1 hmmm_temp 1
execute if score 4 hmmm_temp matches -127 run scoreboard players set 8 hmmm_temp 2
execute if score 4 hmmm_temp matches -127 run scoreboard players add 4 hmmm_temp 1
scoreboard players operation 1 hmmm_temp += 4 hmmm_temp

scoreboard players operation 4 hmmm_temp = 8 hmmm_temp
scoreboard players set 8 hmmm_temp 0

# overflow
execute if score 1 hmmm_temp matches 129.. run function hmmm:float/32/multiply/exception/overflow
# underflow
execute if score 1 hmmm_temp matches ..-128 run function hmmm:float/32/multiply/exception/underflow

# if working
execute if score 8 hmmm_temp matches 0 run function hmmm:float/32/multiply/branch210