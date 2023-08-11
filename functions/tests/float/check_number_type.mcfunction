#> hmmm:tests/float/check_number_type
#   Test the float check_type function
##

data modify storage u_test name set value float_check_type
function u_test:run/reset

# test 1
scoreboard players set expected u_test 3
scoreboard players set P0 hmmm_io 0
scoreboard players set P1 hmmm_io -127
scoreboard players set P2 hmmm_io 0
function hmmm:float/32/check_type/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score

# test 2
scoreboard players set expected u_test 4
scoreboard players set P0 hmmm_io 1
scoreboard players set P1 hmmm_io -127
scoreboard players set P2 hmmm_io 0
function hmmm:float/32/check_type/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score

# test 3
scoreboard players set expected u_test 1
scoreboard players set P0 hmmm_io 0
scoreboard players set P1 hmmm_io 128
scoreboard players set P2 hmmm_io 0
function hmmm:float/32/check_type/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score

# test 4
scoreboard players set expected u_test 2
scoreboard players set P0 hmmm_io 1
scoreboard players set P1 hmmm_io 128
scoreboard players set P2 hmmm_io 0
function hmmm:float/32/check_type/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score

# test 5
scoreboard players set expected u_test 0
scoreboard players set P0 hmmm_io 0
scoreboard players set P1 hmmm_io 128
scoreboard players set P2 hmmm_io 6
function hmmm:float/32/check_type/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score

# test 6
scoreboard players set expected u_test 5
scoreboard players set P0 hmmm_io 0
scoreboard players set P1 hmmm_io 63
scoreboard players set P2 hmmm_io 66
function hmmm:float/32/check_type/main
scoreboard players operation actual u_test = R0 hmmm_io
function u_test:run/score





function u_test:run/end_set

