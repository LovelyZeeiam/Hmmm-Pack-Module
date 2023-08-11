#> hmmm:extended_float/32/exponential/non_zero
#   e^x

# Convert e^x to 2^((1/ln2)(2^(E-23)(2^23+m)))

# Get (2^(E-23)(2^23+m)) (already loaded into hmmm_io.P[0..2])

# Multiply this by 1/ln2

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 0
scoreboard players set P5 hmmm_io 3713595

function hmmm:float/32/multiply/main

# Set hmmm_io.P[1..2] from hmmm_io.R[1..2]
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

# Now we have sign((1/ln2)(2^(E-23))(2^23+m)

# save this to hmmm_temp.[0..2]
scoreboard players operation 11 hmmm_temp = P0 hmmm_io
scoreboard players operation 12 hmmm_temp = P1 hmmm_io
scoreboard players operation 13 hmmm_temp = P2 hmmm_io

# Split integer and decimal part (note decimal is in [0,1))

function hmmm:extended_float/32/floor/main

# I+d
scoreboard players operation P0 hmmm_io = 11 hmmm_temp
scoreboard players operation P1 hmmm_io = 12 hmmm_temp
scoreboard players operation P2 hmmm_io = 13 hmmm_temp

# integer part
scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io

# Save integer part
scoreboard players operation 11 hmmm_temp = R0 hmmm_io
scoreboard players operation 12 hmmm_temp = R1 hmmm_io
scoreboard players operation 13 hmmm_temp = R2 hmmm_io

function hmmm:float/32/subtract/main
# save decimal part
scoreboard players operation 14 hmmm_temp = R0 hmmm_io
scoreboard players operation 15 hmmm_temp = R1 hmmm_io
scoreboard players operation 16 hmmm_temp = R2 hmmm_io

# Check if exponent is greater than what floats can handle:
scoreboard players operation P0 hmmm_io = 11 hmmm_temp
scoreboard players operation P1 hmmm_io = 12 hmmm_temp
scoreboard players operation P2 hmmm_io = 13 hmmm_temp

# If positive, check if integer part is greater or equal to 128
execute if score 11 hmmm_temp matches 0 run function hmmm:extended_float/32/exponential/positive

# If negative, check if integer part is less or equal to 128
execute if score 11 hmmm_temp matches 1 run function hmmm:extended_float/32/exponential/negative

# Exponent is in range:
execute if score 11 hmmm_temp matches 0..1 run function hmmm:extended_float/32/exponential/in_range