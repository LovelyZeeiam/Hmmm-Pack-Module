#> hmmm:tests/extended_float/truncate
#   Test float truncation
##

data modify storage u_test name set value float_truncation
function u_test:run/reset

# test 1
# 361.632 -> 361
scoreboard players set expected u_test 1135902720

scoreboard players set P0 hmmm_io 1135923429
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:extended_float/32/truncate/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io

function u_test:run/score

# test 2
# 689432.4375 -> 689432
scoreboard players set expected u_test 1227379072

scoreboard players set P0 hmmm_io 1227379079
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:extended_float/32/truncate/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io

function u_test:run/score

# test 3
# -361.632 -> -361
scoreboard players set expected u_test -1011580928

scoreboard players set P0 hmmm_io -1011560219
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:extended_float/32/truncate/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io

function u_test:run/score

# test 4
# -689432.4375 -> -689432
scoreboard players set expected u_test -920104576

scoreboard players set P0 hmmm_io -920104569
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:extended_float/32/truncate/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io

function u_test:run/score

# test 5
# 0 -> 0
scoreboard players set expected u_test 0

scoreboard players set P0 hmmm_io 0
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:extended_float/32/truncate/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io

# test 6
# 700 -> 700
scoreboard players set expected u_test 1143930880

scoreboard players set P0 hmmm_io 1143930880
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:extended_float/32/truncate/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io

function u_test:run/score


function u_test:run/end_set
