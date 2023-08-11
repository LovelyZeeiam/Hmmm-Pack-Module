#> hmmm:float/32/add/branch2
#   Unless F1 is a different infinity than F0, return F0. Throw a NaN exception overwise.
##

function hmmm:float/32/add/branch10
execute if score 10 hmmm_temp matches 1..2 unless score 10 hmmm_temp = 9 hmmm_temp run function hmmm:float/32/add/exception/nan