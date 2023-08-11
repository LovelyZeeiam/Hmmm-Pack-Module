#> hmmm:float/32/add/branch1111
# check for significand overflow

# F0 = hmmm_temp.[0, 1, 2]

# no overflow
execute unless score R2 hmmm_io matches 16777216.. run function hmmm:float/32/add/branch11111

# fix significand overflow
execute if score R2 hmmm_io matches 16777216.. run function hmmm:float/32/add/branch11110
