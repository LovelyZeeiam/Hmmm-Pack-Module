#> hmmm:tests/extended_float/power
#   Test float power
##

data modify storage u_test name set value float_power
function u_test:run/reset

# test 1
# 2^2=4
scoreboard players set expected u_test 1082130432

scoreboard players set P0 hmmm_io 1073741824
function hmmm:float/32/decompose/main
scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io
scoreboard players set P0 hmmm_io 1073741824
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/add/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io

function u_test:run/score



function u_test:run/end_set
