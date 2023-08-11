#> hmmm:float/32/compare/greater_equal/branch0
#   Signs are the same
#

execute if score P1 hmmm_io > P4 hmmm_io run scoreboard players set R0 hmmm_io 1
execute if score P1 hmmm_io = P4 hmmm_io if score P2 hmmm_io >= P5 hmmm_io run scoreboard players set R0 hmmm_io 1