#> hmmm:extended_float/32/power/integer_exponent/odd
#   Case when the exponent is odd
#

scoreboard players operation 11 hmmm_temp = P3 hmmm_io
scoreboard players operation 12 hmmm_temp = P4 hmmm_io
scoreboard players operation 13 hmmm_temp = P5 hmmm_io

data modify storage calculate stack append value [0,0,0]
execute store result storage calculate stack[-1][0] int 1 run scoreboard players operation P3 hmmm_io = P0 hmmm_io
execute store result storage calculate stack[-1][1] int 1 run scoreboard players operation P4 hmmm_io = P1 hmmm_io
execute store result storage calculate stack[-1][2] int 1 run scoreboard players operation P5 hmmm_io = P2 hmmm_io


function hmmm:float/32/multiply/main

# n
scoreboard players operation P0 hmmm_io = 11 hmmm_temp
scoreboard players operation P1 hmmm_io = 12 hmmm_temp
scoreboard players operation P2 hmmm_io = 13 hmmm_temp

# x^2
scoreboard players operation 11 hmmm_temp = R0 hmmm_io
scoreboard players operation 12 hmmm_temp = R1 hmmm_io
scoreboard players operation 13 hmmm_temp = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 0
scoreboard players set P5 hmmm_io 0

function hmmm:float/32/subtract/main

scoreboard players operation P0 hmmm_io = 11 hmmm_temp
scoreboard players operation P1 hmmm_io = 12 hmmm_temp
scoreboard players operation P2 hmmm_io = 13 hmmm_temp
# (n-1)/2
scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players remove P4 hmmm_io 1
scoreboard players operation P5 hmmm_io = R2 hmmm_io

function hmmm:extended_float/32/power/integer_exponent/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

execute store result score P3 hmmm_io run data get storage calculate stack[-1][0]
execute store result score P4 hmmm_io run data get storage calculate stack[-1][1]
execute store result score P5 hmmm_io run data get storage calculate stack[-1][2]
data remove storage calculate stack[-1]
function hmmm:float/32/multiply/main

scoreboard players set 0 hmmm_temp 0