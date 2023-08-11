#> hmmm:extended_float/32/power/integer_exponent/odd
#   Case when the exponent is odd
#

scoreboard players operation 11 temp = P3 hmmm_io
scoreboard players operation 12 temp = P4 hmmm_io
scoreboard players operation 13 temp = P5 hmmm_io

data modify storage calculate stack append value [0,0,0]
execute store result storage calculate stack[-1][0] int 1 run scoreboard players operation P3 hmmm_io = P0 hmmm_io
execute store result storage calculate stack[-1][1] int 1 run scoreboard players operation P4 hmmm_io = P1 hmmm_io
execute store result storage calculate stack[-1][2] int 1 run scoreboard players operation P5 hmmm_io = P2 hmmm_io


function hmmm:float/32/multiply/main

# n
scoreboard players operation P0 hmmm_io = 11 temp
scoreboard players operation P1 hmmm_io = 12 temp
scoreboard players operation P2 hmmm_io = 13 temp

# x^2
scoreboard players operation 11 temp = R0 hmmm_io
scoreboard players operation 12 temp = R1 hmmm_io
scoreboard players operation 13 temp = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 0
scoreboard players set P5 hmmm_io 0

function hmmm:float/32/subtract/main

scoreboard players operation P0 hmmm_io = 11 temp
scoreboard players operation P1 hmmm_io = 12 temp
scoreboard players operation P2 hmmm_io = 13 temp
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

scoreboard players set 0 temp 0