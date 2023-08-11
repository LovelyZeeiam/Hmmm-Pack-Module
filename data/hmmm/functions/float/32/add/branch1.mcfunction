#> hmmm:float/32/add/branch1
##

# store F0 state
scoreboard players operation 9 hmmm_temp = R0 hmmm_io

# check whether F1 is 0
scoreboard players operation P0 hmmm_io = 4 hmmm_temp
scoreboard players operation P1 hmmm_io = 5 hmmm_temp
scoreboard players operation P2 hmmm_io = 6 hmmm_temp
function hmmm:float/32/check_type/main

# store F1 state
scoreboard players operation 10 hmmm_temp = R0 hmmm_io

# nan exception
execute if score R0 hmmm_io matches 0 run function hmmm:float/32/add/exception/nan

# return F0 if F1 is 0
execute if score R0 hmmm_io matches 3..4 run function hmmm:float/32/add/branch10

# If F0 is an infinity, check if F1 a different infinity. Otherwise return F0
execute if score 8 hmmm_temp matches 0 if score 9 hmmm_temp matches 1..2 run function hmmm:float/32/add/branch2
execute if score 8 hmmm_temp matches 0 if score 10 hmmm_temp matches 1..2 run function hmmm:float/32/add/branch3


# other case
execute if score 8 hmmm_temp matches 0 run function hmmm:float/32/add/branch11