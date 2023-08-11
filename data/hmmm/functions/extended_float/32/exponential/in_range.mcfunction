#> hmmm:extended_float/32/exponential/in_range
# Handles exponentation when the exponent is in range
#


# integer part
scoreboard players operation P0 hmmm_io = 11 temp
scoreboard players operation P1 hmmm_io = 12 temp
scoreboard players operation P2 hmmm_io = 13 temp

scoreboard players set 0 temp 1
execute if score P0 hmmm_io matches 0 if score P1 hmmm_io matches -127 if score P2 hmmm_io matches 0 run function hmmm:extended_float/32/exponential/floor_zero
execute if score 0 temp matches 1 run function hmmm:extended_float/32/exponential/floor_nonzero

# Decimal

# Get e^d using degree 7 taylor polynomial
# decimal part
scoreboard players operation P0 hmmm_io = 14 temp
scoreboard players operation P1 hmmm_io = 15 temp
scoreboard players operation P2 hmmm_io = 16 temp
# subtract 0.5
scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io -1
scoreboard players set P5 hmmm_io 0

function hmmm:float/32/subtract/main
# copy output back to input
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

# multiply by ln2
scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io -1
scoreboard players set P5 hmmm_io 3240472

function hmmm:float/32/multiply/main

# This is ln(2)(x-0.5). Save it to temp.[14..16]
scoreboard players operation 14 temp = R0 hmmm_io
scoreboard players operation 15 temp = R1 hmmm_io
scoreboard players operation 16 temp = R2 hmmm_io

# Save a copy (^ to the ith power) to temp.[17..19] (insert later)

# Set temp.[20..22] as the accumulator (begins at 1) (insert later)

# degree 1: Just add temp.[14..16] and 1
scoreboard players operation P0 hmmm_io = 14 temp
scoreboard players operation P1 hmmm_io = 15 temp
scoreboard players operation P2 hmmm_io = 16 temp

# this is 1
scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 0
scoreboard players set P5 hmmm_io 0
function hmmm:float/32/add/main

# save it to the accumulator
scoreboard players operation 20 temp = R0 hmmm_io
scoreboard players operation 21 temp = R1 hmmm_io
scoreboard players operation 22 temp = R2 hmmm_io

# degree 2:
scoreboard players operation P0 hmmm_io = 14 temp
scoreboard players operation P1 hmmm_io = 15 temp
scoreboard players operation P2 hmmm_io = 16 temp

scoreboard players operation P3 hmmm_io = 14 temp
scoreboard players operation P4 hmmm_io = 15 temp
scoreboard players operation P5 hmmm_io = 16 temp
function hmmm:float/32/multiply/main

# Save this to temp.[17..19]
scoreboard players operation 17 temp = R0 hmmm_io
scoreboard players operation 18 temp = R1 hmmm_io
scoreboard players operation 19 temp = R2 hmmm_io

# Divide by two and add it to accumulator temp.[9..11] (bitshift right)
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
# bitshift right
scoreboard players remove P1 hmmm_io 1
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 20 temp
scoreboard players operation P4 hmmm_io = 21 temp
scoreboard players operation P5 hmmm_io = 22 temp

function hmmm:float/32/add/main
# save it to the accumulator
scoreboard players operation 20 temp = R0 hmmm_io
scoreboard players operation 21 temp = R1 hmmm_io
scoreboard players operation 22 temp = R2 hmmm_io


# degree 3:
scoreboard players operation P0 hmmm_io = 14 temp
scoreboard players operation P1 hmmm_io = 15 temp
scoreboard players operation P2 hmmm_io = 16 temp

scoreboard players operation P3 hmmm_io = 17 temp
scoreboard players operation P4 hmmm_io = 18 temp
scoreboard players operation P5 hmmm_io = 19 temp
function hmmm:float/32/multiply/main

# Save this to temp.[6..8]
scoreboard players operation 17 temp = R0 hmmm_io
scoreboard players operation 18 temp = R1 hmmm_io
scoreboard players operation 19 temp = R2 hmmm_io

# Divide by 3! and add it to accumulator temp.[9..11]
# divide by six
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 2
scoreboard players set P5 hmmm_io 4194304
function hmmm:float/32/divide/main

# add to accumulator
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 20 temp
scoreboard players operation P4 hmmm_io = 21 temp
scoreboard players operation P5 hmmm_io = 22 temp

function hmmm:float/32/add/main
# save it to the accumulator
scoreboard players operation 20 temp = R0 hmmm_io
scoreboard players operation 21 temp = R1 hmmm_io
scoreboard players operation 22 temp = R2 hmmm_io


# degree 4:
scoreboard players operation P0 hmmm_io = 14 temp
scoreboard players operation P1 hmmm_io = 15 temp
scoreboard players operation P2 hmmm_io = 16 temp

scoreboard players operation P3 hmmm_io = 17 temp
scoreboard players operation P4 hmmm_io = 18 temp
scoreboard players operation P5 hmmm_io = 19 temp
function hmmm:float/32/multiply/main

# Save this to temp.[6..8]
scoreboard players operation 17 temp = R0 hmmm_io
scoreboard players operation 18 temp = R1 hmmm_io
scoreboard players operation 19 temp = R2 hmmm_io

# Divide by 4! and add it to accumulator temp.[9..11]
# divide by 24
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 4
scoreboard players set P5 hmmm_io 4194304
function hmmm:float/32/divide/main

# add to accumulator
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 20 temp
scoreboard players operation P4 hmmm_io = 21 temp
scoreboard players operation P5 hmmm_io = 22 temp

function hmmm:float/32/add/main
# save it to the accumulator
scoreboard players operation 20 temp = R0 hmmm_io
scoreboard players operation 21 temp = R1 hmmm_io
scoreboard players operation 22 temp = R2 hmmm_io


# degree 5:
scoreboard players operation P0 hmmm_io = 14 temp
scoreboard players operation P1 hmmm_io = 15 temp
scoreboard players operation P2 hmmm_io = 16 temp

scoreboard players operation P3 hmmm_io = 17 temp
scoreboard players operation P4 hmmm_io = 18 temp
scoreboard players operation P5 hmmm_io = 19 temp
function hmmm:float/32/multiply/main

# Save this to temp.[6..8]
scoreboard players operation 17 temp = R0 hmmm_io
scoreboard players operation 18 temp = R1 hmmm_io
scoreboard players operation 19 temp = R2 hmmm_io

# Divide by 5! and add it to accumulator temp.[9..11]
# divide by five
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 6
scoreboard players set P5 hmmm_io 7340032
function hmmm:float/32/divide/main

# add to accumulator
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 20 temp
scoreboard players operation P4 hmmm_io = 21 temp
scoreboard players operation P5 hmmm_io = 22 temp

function hmmm:float/32/add/main
# save it to the accumulator
scoreboard players operation 20 temp = R0 hmmm_io
scoreboard players operation 21 temp = R1 hmmm_io
scoreboard players operation 22 temp = R2 hmmm_io


# degree 6:
scoreboard players operation P0 hmmm_io = 14 temp
scoreboard players operation P1 hmmm_io = 15 temp
scoreboard players operation P2 hmmm_io = 16 temp

scoreboard players operation P3 hmmm_io = 17 temp
scoreboard players operation P4 hmmm_io = 18 temp
scoreboard players operation P5 hmmm_io = 19 temp
function hmmm:float/32/multiply/main

# Save this to temp.[6..8]
scoreboard players operation 17 temp = R0 hmmm_io
scoreboard players operation 18 temp = R1 hmmm_io
scoreboard players operation 19 temp = R2 hmmm_io

# Divide by 6! and add it to accumulator temp.[9..11]
# divide by 720
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 9
scoreboard players set P5 hmmm_io 3407872
function hmmm:float/32/divide/main

# add to accumulator
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 20 temp
scoreboard players operation P4 hmmm_io = 21 temp
scoreboard players operation P5 hmmm_io = 22 temp

function hmmm:float/32/add/main
# save it to the accumulator
scoreboard players operation 20 temp = R0 hmmm_io
scoreboard players operation 21 temp = R1 hmmm_io
scoreboard players operation 22 temp = R2 hmmm_io


# degree 7:
scoreboard players operation P0 hmmm_io = 14 temp
scoreboard players operation P1 hmmm_io = 15 temp
scoreboard players operation P2 hmmm_io = 16 temp

scoreboard players operation P3 hmmm_io = 17 temp
scoreboard players operation P4 hmmm_io = 18 temp
scoreboard players operation P5 hmmm_io = 19 temp
function hmmm:float/32/multiply/main

# Save this to temp.[6..8]
scoreboard players operation 17 temp = R0 hmmm_io
scoreboard players operation 18 temp = R1 hmmm_io
scoreboard players operation 19 temp = R2 hmmm_io

# Divide by 7! and add it to accumulator temp.[9..11]
# divide by 
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 12
scoreboard players set P5 hmmm_io 1933312
function hmmm:float/32/divide/main

# add to accumulator
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players operation P3 hmmm_io = 20 temp
scoreboard players operation P4 hmmm_io = 21 temp
scoreboard players operation P5 hmmm_io = 22 temp

function hmmm:float/32/add/main
# # save it to the accumulator
# scoreboard players operation 20 temp = R0 hmmm_io
# scoreboard players operation 21 temp = R1 hmmm_io
# scoreboard players operation 22 temp = R2 hmmm_io

# Final step so don't save it to the accumulator, push back to input and multiply by sqrt2
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 0
scoreboard players set P5 hmmm_io 3474675
function hmmm:float/32/multiply/main

# Then multiply it to the integer part
scoreboard players operation P0 hmmm_io = 11 temp
scoreboard players operation P1 hmmm_io = 12 temp
scoreboard players operation P2 hmmm_io = 13 temp

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io
function hmmm:float/32/multiply/main

# And that's it!