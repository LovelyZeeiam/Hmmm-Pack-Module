#> hmmm:extended_float/32/fast_inverse_sqrt/positive
#   Positive case

# save x2
scoreboard players operation 11 hmmm_temp = P0 hmmm_io
scoreboard players operation 12 hmmm_temp = P1 hmmm_io
scoreboard players remove 12 hmmm_temp 1
scoreboard players operation 13 hmmm_temp = P2 hmmm_io

# evil floating point bit hack
function hmmm:float/32/recompose/main
scoreboard players operation P1 hmmm_io = R0 hmmm_io

# huh
scoreboard players operation P1 hmmm_io /= 2 hmmm_constant
scoreboard players set P0 hmmm_io 1597463007
scoreboard players operation P0 hmmm_io -= P1 hmmm_io
function hmmm:float/32/decompose/main

# save y
scoreboard players operation 14 hmmm_temp = R0 hmmm_io
scoreboard players operation 15 hmmm_temp = R1 hmmm_io
scoreboard players operation 16 hmmm_temp = R2 hmmm_io

# 1st iteration

# y^2
scoreboard players operation P0 hmmm_io = 14 hmmm_temp
scoreboard players operation P1 hmmm_io = 15 hmmm_temp
scoreboard players operation P2 hmmm_io = 16 hmmm_temp

scoreboard players operation P3 hmmm_io = 14 hmmm_temp
scoreboard players operation P4 hmmm_io = 15 hmmm_temp
scoreboard players operation P5 hmmm_io = 16 hmmm_temp
function hmmm:float/32/multiply/main

# x2*y^2
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 11 hmmm_temp
scoreboard players operation P4 hmmm_io = 12 hmmm_temp
scoreboard players operation P5 hmmm_io = 13 hmmm_temp
function hmmm:float/32/multiply/main

# 1.5 - x2*y^2
scoreboard players set P0 hmmm_io 0
scoreboard players set P1 hmmm_io 0
scoreboard players set P2 hmmm_io 4194304

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io
function hmmm:float/32/subtract/main

# y * (1.5 - x2*y^2)
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 14 hmmm_temp
scoreboard players operation P4 hmmm_io = 15 hmmm_temp
scoreboard players operation P5 hmmm_io = 16 hmmm_temp
function hmmm:float/32/multiply/main



# second iteration (optional)

# save y
scoreboard players operation 14 hmmm_temp = R0 hmmm_io
scoreboard players operation 15 hmmm_temp = R1 hmmm_io
scoreboard players operation 16 hmmm_temp = R2 hmmm_io

# 1st iteration

# y^2
scoreboard players operation P0 hmmm_io = 14 hmmm_temp
scoreboard players operation P1 hmmm_io = 15 hmmm_temp
scoreboard players operation P2 hmmm_io = 16 hmmm_temp

scoreboard players operation P3 hmmm_io = 14 hmmm_temp
scoreboard players operation P4 hmmm_io = 15 hmmm_temp
scoreboard players operation P5 hmmm_io = 16 hmmm_temp
function hmmm:float/32/multiply/main

# x2*y^2
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 11 hmmm_temp
scoreboard players operation P4 hmmm_io = 12 hmmm_temp
scoreboard players operation P5 hmmm_io = 13 hmmm_temp
function hmmm:float/32/multiply/main

# 1.5 - x2*y^2
scoreboard players set P0 hmmm_io 0
scoreboard players set P1 hmmm_io 0
scoreboard players set P2 hmmm_io 4194304

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io
function hmmm:float/32/subtract/main

# y * (1.5 - x2*y^2)
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 14 hmmm_temp
scoreboard players operation P4 hmmm_io = 15 hmmm_temp
scoreboard players operation P5 hmmm_io = 16 hmmm_temp
function hmmm:float/32/multiply/main

scoreboard players set 11 hmmm_temp 0