#> hmmm:extended_float/32/asin/in_bounds
#   Case when in bounds
#

scoreboard players operation 17 hmmm_temp = P0 hmmm_io
scoreboard players operation 18 hmmm_temp = P1 hmmm_io
scoreboard players operation 19 hmmm_temp = P2 hmmm_io

scoreboard players operation P3 hmmm_io = P0 hmmm_io
scoreboard players operation P4 hmmm_io = P1 hmmm_io
scoreboard players operation P5 hmmm_io = P2 hmmm_io

function hmmm:float/32/multiply/main

scoreboard players set P0 hmmm_io 0
scoreboard players set P1 hmmm_io 0
scoreboard players set P2 hmmm_io 0

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io

function hmmm:float/32/subtract/main

scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

function hmmm:extended_float/32/fast_inverse_sqrt/main

scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 17 hmmm_temp
scoreboard players operation P4 hmmm_io = 18 hmmm_temp
scoreboard players operation P5 hmmm_io = 19 hmmm_temp

function hmmm:float/32/multiply/main

scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

function hmmm:extended_float/32/atan/main