#> hmmm:float/32/divide/branch210
#   divide significands
#

# fix sign
scoreboard players set R0 hmmm_io 0
execute unless score 0 hmmm_temp = 3 hmmm_temp run scoreboard players set R0 hmmm_io 1

# set exponent


scoreboard players operation R1 hmmm_io = 1 hmmm_temp
# add implicit bit
execute unless score 4 hmmm_temp matches 1 unless score 4 hmmm_temp matches 3 run scoreboard players add 2 hmmm_temp 8388608
execute unless score 4 hmmm_temp matches 2 unless score 4 hmmm_temp matches 3 run scoreboard players add 5 hmmm_temp 8388608

execute unless score 4 hmmm_temp matches 0 unless score 4 hmmm_temp matches 2 run function hmmm:float/32/divide/branch2103
execute unless score 4 hmmm_temp matches 0 unless score 4 hmmm_temp matches 1 run function hmmm:float/32/divide/branch2104

# divide using long division

scoreboard players operation 0 hmmm_temp = 2 hmmm_temp
scoreboard players operation 1 hmmm_temp = 5 hmmm_temp
scoreboard players set R2 hmmm_io 0
scoreboard players operation 0 hmmm_temp *= 64 hmmm_constant
scoreboard players operation 1 hmmm_temp *= 64 hmmm_constant

# do this 24 times
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102
function hmmm:float/32/divide/branch2102

execute if score R2 hmmm_io matches ..8388608 run function hmmm:float/32/divide/branch2101
execute if score 0 hmmm_temp >= 1 hmmm_temp run scoreboard players add R2 hmmm_io 1

# fix denormalized numbers
execute if score R1 hmmm_io matches ..-127 run function hmmm:float/32/divide/branch2105
# return 0 if number is very small
execute if score R1 hmmm_io matches ..-127 run function hmmm:float/32/divide/branch1
# return infinity if number is very large
execute if score R1 hmmm_io matches 129.. run function hmmm:float/32/divide/branch20

execute if score 8 hmmm_temp matches 0 if score R1 hmmm_io matches -126 unless score R0 hmmm_io matches 8388608.. run scoreboard players set R1 hmmm_io -127

# remove implicit bit
execute if score 8 hmmm_temp matches 0 if score R1 hmmm_io matches -126.. run scoreboard players remove R2 hmmm_io 8388608

execute if score R2 hmmm_io matches 8388608.. run function hmmm:float/32/divide/branch2106