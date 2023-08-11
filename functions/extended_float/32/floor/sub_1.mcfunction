#> hmmm:extended_float/32/floor/sub_1
#   Subtracts 1 from the floored float

scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 0
scoreboard players set P5 hmmm_io 0

function hmmm:float/32/subtract/main