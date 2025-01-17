#> hmmm:tests/float/redecompose
#   Test the float decomposition and recomposition function
#   Since they are inverses of one another, recompose(decompose(x))=x
##

data modify storage u_test name set value float_redecomposition
function u_test:run/reset

# test 1
scoreboard players set expected u_test 674632674
scoreboard players operation P0 hmmm_io = expected u_test
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score

# test 2
scoreboard players set expected u_test -764327962
scoreboard players operation P0 hmmm_io = expected u_test
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score

# test 3
scoreboard players set expected u_test 0
scoreboard players operation P0 hmmm_io = expected u_test
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score

# test 4
scoreboard players set expected u_test 2147483647
scoreboard players operation P0 hmmm_io = expected u_test
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score

# test 5
scoreboard players set expected u_test -2147483648
scoreboard players operation P0 hmmm_io = expected u_test
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score


# test 6
scoreboard players set expected u_test 0
scoreboard players operation P0 hmmm_io = expected u_test
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score


# test 7
scoreboard players set expected u_test 1098907648
scoreboard players operation P0 hmmm_io = expected u_test
function hmmm:float/32/decompose/main
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io
function hmmm:float/32/recompose/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score



function u_test:run/end_set

