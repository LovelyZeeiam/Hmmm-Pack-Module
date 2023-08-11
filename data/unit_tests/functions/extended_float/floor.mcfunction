#> unit_tests:extended_float/floor
#   Test float truncation
##

data modify storage u_test name set value float_floor
function u_test:run/reset

# test 1
# 361.632 -> 361
scoreboard players set expected u_test 1135902720

scoreboard players set P0 io 1135923429
function hmmm:float/32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:extended_float/32/floor/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 2
# 689432.4375 -> 689432
scoreboard players set expected u_test 1227379072

scoreboard players set P0 io 1227379079
function hmmm:float/32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:extended_float/32/floor/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 3
# -361.632 -> -362
scoreboard players set expected u_test -1011548160

scoreboard players set P0 io -1011560219
function hmmm:float/32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:extended_float/32/floor/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 4
# -689432.4375 -> -689433
scoreboard players set expected u_test -920104560

scoreboard players set P0 io -920104569
function hmmm:float/32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:extended_float/32/floor/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 5
# 0 -> 0
scoreboard players set expected u_test 0

scoreboard players set P0 io 0
function hmmm:float/32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:extended_float/32/floor/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 6
# 700 -> 700
scoreboard players set expected u_test 1143930880

scoreboard players set P0 io 1143930880
function hmmm:float/32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:extended_float/32/floor/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 7
# -0 -> -0
# In origin pack, this assertion also tests.
scoreboard players set expected u_test -2147483648

scoreboard players set P0 io -2147483648
function hmmm:float/32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:extended_float/32/floor/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 8
# -700 -> -700
scoreboard players set expected u_test -1003552768

scoreboard players set P0 io -1003552768
function hmmm:float/32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:extended_float/32/floor/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score

# test 9
# 0.72134752044 -> 0
scoreboard players set expected u_test 0

scoreboard players set P0 io 1060678203
function hmmm:float/32/decompose/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:extended_float/32/floor/main
scoreboard players operation P0 io = R0 io
scoreboard players operation P1 io = R1 io
scoreboard players operation P2 io = R2 io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 io

function u_test:run/score


function u_test:run/end_set
