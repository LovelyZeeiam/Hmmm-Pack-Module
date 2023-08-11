#> hmmm:extended_float/32/log/positive
#   Compute the logarithm

# save for later

scoreboard players operation 9 hmmm_temp = P2 hmmm_io

# turn exponent int into float
scoreboard players operation P0 hmmm_io = P1 hmmm_io
function hmmm:float/32/convert/from_int/main

# set hmmm_io.P[0..2] from hmmm_io R[0..2] if the main function changes

# ln2 -> 1060205080
scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io -1
scoreboard players set P5 hmmm_io 3240472

# multiply exponent by ln2
function hmmm:float/32/multiply/main

# save result of multiplying exponent to hmmm_temp.[11..13]
scoreboard players operation 11 hmmm_temp = R0 hmmm_io
scoreboard players operation 12 hmmm_temp = R1 hmmm_io
scoreboard players operation 13 hmmm_temp = R2 hmmm_io

# turn mantissa to float (io.P[0,1]=0, hmmm_io.P2=mantissa)
scoreboard players set P0 hmmm_io 0
scoreboard players set P1 hmmm_io 0
scoreboard players operation P2 hmmm_io = 9 hmmm_temp

# a = 0.67311669056
scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io -1
scoreboard players set P5 hmmm_io 2904416

# multiply these together
function hmmm:float/32/multiply/main

# save result to hmmm_io.P[0..2]
scoreboard players set P0 hmmm_io 0
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

# subtract 1
scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 0
scoreboard players set P5 hmmm_io 0

function hmmm:float/32/subtract/main

# initial hmmm_constants

# save this to hmmm_temp.[14..16] This is (ax-1)
scoreboard players operation 14 hmmm_temp = R0 hmmm_io
scoreboard players operation 15 hmmm_temp = R1 hmmm_io
scoreboard players operation 16 hmmm_temp = R2 hmmm_io

# make a duplicate copy at hmmm_temp.[17..19]. This is (ax-1)^i
scoreboard players operation 17 hmmm_temp = 14 hmmm_temp
scoreboard players operation 18 hmmm_temp = 15 hmmm_temp
scoreboard players operation 19 hmmm_temp = 16 hmmm_temp

# accumulator at hmmm_temp.[20..22] (copy hmmm_temp.[14..16])) This is the sum
scoreboard players operation 20 hmmm_temp = R0 hmmm_io
scoreboard players operation 21 hmmm_temp = R1 hmmm_io
scoreboard players operation 22 hmmm_temp = R2 hmmm_io

# ✅ correct up to here

# well, 0.00967503584 vs 0.00967502593994

# i=2

# calculate exponent for i=2
function hmmm:extended_float/32/log/calculate_exponent

# divide it by 2 (subtract 1 from exponent)
scoreboard players remove R1 hmmm_io 1

# subtract it from accumulator
scoreboard players operation P0 hmmm_io = 20 hmmm_temp
scoreboard players operation P1 hmmm_io = 21 hmmm_temp
scoreboard players operation P2 hmmm_io = 22 hmmm_temp

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io
function hmmm:float/32/subtract/main

# set this to the accumulator
scoreboard players operation 20 hmmm_temp = R0 hmmm_io
scoreboard players operation 21 hmmm_temp = R1 hmmm_io
scoreboard players operation 22 hmmm_temp = R2 hmmm_io

# i=3

# ✅ correct up to here

# calculate exponent for i=3
function hmmm:extended_float/32/log/calculate_exponent

# divide it by 3
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 1
scoreboard players set P5 hmmm_io 4194304
function hmmm:float/32/divide/main

# add it to accumulator
scoreboard players operation P0 hmmm_io = 20 hmmm_temp
scoreboard players operation P1 hmmm_io = 21 hmmm_temp
scoreboard players operation P2 hmmm_io = 22 hmmm_temp

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io
function hmmm:float/32/add/main

# set this to the accumulator
scoreboard players operation 20 hmmm_temp = R0 hmmm_io
scoreboard players operation 21 hmmm_temp = R1 hmmm_io
scoreboard players operation 22 hmmm_temp = R2 hmmm_io

# i=4

# calculate exponent for i=4
function hmmm:extended_float/32/log/calculate_exponent

# divide it by 4 (subtract 2 from exponent)
scoreboard players remove R1 hmmm_io 2

# subtract it from accumulator
scoreboard players operation P0 hmmm_io = 20 hmmm_temp
scoreboard players operation P1 hmmm_io = 21 hmmm_temp
scoreboard players operation P2 hmmm_io = 22 hmmm_temp

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io
function hmmm:float/32/subtract/main

# set this to the accumulator
scoreboard players operation 20 hmmm_temp = R0 hmmm_io
scoreboard players operation 21 hmmm_temp = R1 hmmm_io
scoreboard players operation 22 hmmm_temp = R2 hmmm_io

# i=5

# calculate exponent for i=5
function hmmm:extended_float/32/log/calculate_exponent

# divide it by 5
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 2
scoreboard players set P5 hmmm_io 2097152
function hmmm:float/32/divide/main

# add it to accumulator
scoreboard players operation P0 hmmm_io = 20 hmmm_temp
scoreboard players operation P1 hmmm_io = 21 hmmm_temp
scoreboard players operation P2 hmmm_io = 22 hmmm_temp

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io
function hmmm:float/32/add/main

# set this to the accumulator
scoreboard players operation 20 hmmm_temp = R0 hmmm_io
scoreboard players operation 21 hmmm_temp = R1 hmmm_io
scoreboard players operation 22 hmmm_temp = R2 hmmm_io


# i=6

# calculate exponent for i=6
function hmmm:extended_float/32/log/calculate_exponent

# divide it by 6
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 2
scoreboard players set P5 hmmm_io 4194304
function hmmm:float/32/divide/main

# subtract it from accumulator
scoreboard players operation P0 hmmm_io = 20 hmmm_temp
scoreboard players operation P1 hmmm_io = 21 hmmm_temp
scoreboard players operation P2 hmmm_io = 22 hmmm_temp

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io
function hmmm:float/32/subtract/main

# set this to the accumulator
scoreboard players operation 20 hmmm_temp = R0 hmmm_io
scoreboard players operation 21 hmmm_temp = R1 hmmm_io
scoreboard players operation 22 hmmm_temp = R2 hmmm_io

# i=7

# calculate exponent for i=7
function hmmm:extended_float/32/log/calculate_exponent

# divide it by 7
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

scoreboard players set P3 hmmm_io 0
scoreboard players set P4 hmmm_io 2
scoreboard players set P5 hmmm_io 6291456
function hmmm:float/32/divide/main

# add it to accumulator
scoreboard players operation P0 hmmm_io = 20 hmmm_temp
scoreboard players operation P1 hmmm_io = 21 hmmm_temp
scoreboard players operation P2 hmmm_io = 22 hmmm_temp

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io
function hmmm:float/32/add/main

# set this to the accumulator
scoreboard players operation 20 hmmm_temp = R0 hmmm_io
scoreboard players operation 21 hmmm_temp = R1 hmmm_io
scoreboard players operation 22 hmmm_temp = R2 hmmm_io

# i=8

# calculate exponent for i=4
function hmmm:extended_float/32/log/calculate_exponent

# divide it by 8 (subtract 3 from exponent)
scoreboard players remove R1 hmmm_io 3

# subtract it from accumulator
scoreboard players operation P0 hmmm_io = 20 hmmm_temp
scoreboard players operation P1 hmmm_io = 21 hmmm_temp
scoreboard players operation P2 hmmm_io = 22 hmmm_temp

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io
function hmmm:float/32/subtract/main

# set this to the accumulator
scoreboard players operation 20 hmmm_temp = R0 hmmm_io
scoreboard players operation 21 hmmm_temp = R1 hmmm_io
scoreboard players operation 22 hmmm_temp = R2 hmmm_io

# If you need even more precision

# # i=9

# # calculate exponent for i=9
# function hmmm:extended_float/32/log/calculate_exponent

# # divide it by 9
# scoreboard players operation P0 hmmm_io = R0 hmmm_io
# scoreboard players operation P1 hmmm_io = R1 hmmm_io
# scoreboard players operation P2 hmmm_io = R2 hmmm_io

# scoreboard players set P3 hmmm_io 0
# scoreboard players set P4 hmmm_io 3
# scoreboard players set P5 hmmm_io 1048576
# function hmmm:float/32/divide/main

# # add it to accumulator
# scoreboard players operation P0 hmmm_io = 20 hmmm_temp
# scoreboard players operation P1 hmmm_io = 21 hmmm_temp
# scoreboard players operation P2 hmmm_io = 22 hmmm_temp

# scoreboard players operation P3 hmmm_io = R0 hmmm_io
# scoreboard players operation P4 hmmm_io = R1 hmmm_io
# scoreboard players operation P5 hmmm_io = R2 hmmm_io
# function hmmm:float/32/add/main

# # set this to the accumulator
# scoreboard players operation 20 hmmm_temp = R0 hmmm_io
# scoreboard players operation 21 hmmm_temp = R1 hmmm_io
# scoreboard players operation 22 hmmm_temp = R2 hmmm_io


# # i=10

# # calculate exponent for i=10
# function hmmm:extended_float/32/log/calculate_exponent

# # divide it by 10
# scoreboard players operation P0 hmmm_io = R0 hmmm_io
# scoreboard players operation P1 hmmm_io = R1 hmmm_io
# scoreboard players operation P2 hmmm_io = R2 hmmm_io

# scoreboard players set P3 hmmm_io 0
# scoreboard players set P4 hmmm_io 3
# scoreboard players set P5 hmmm_io 2097152
# function hmmm:float/32/divide/main

# # subtract it from accumulator
# scoreboard players operation P0 hmmm_io = 20 hmmm_temp
# scoreboard players operation P1 hmmm_io = 21 hmmm_temp
# scoreboard players operation P2 hmmm_io = 22 hmmm_temp

# scoreboard players operation P3 hmmm_io = R0 hmmm_io
# scoreboard players operation P4 hmmm_io = R1 hmmm_io
# scoreboard players operation P5 hmmm_io = R2 hmmm_io
# function hmmm:float/32/subtract/main



# This is the final result so don't set it to hmmm_temp.[20..22] but rather set it to hmmm_io P.[0..2]
scoreboard players operation P0 hmmm_io = R0 hmmm_io
scoreboard players operation P1 hmmm_io = R1 hmmm_io
scoreboard players operation P2 hmmm_io = R2 hmmm_io

# ln(a), a=0.67311669056: 
scoreboard players set P3 hmmm_io 1
scoreboard players set P4 hmmm_io -2
scoreboard players set P5 hmmm_io 4893463

# subtract to finally yield the logarithm of the mantissa + implicit bit
function hmmm:float/32/subtract/main

# add the log of exponent and mantissa together

scoreboard players operation P0 hmmm_io = 11 hmmm_temp
scoreboard players operation P1 hmmm_io = 12 hmmm_temp
scoreboard players operation P2 hmmm_io = 13 hmmm_temp

scoreboard players operation P3 hmmm_io = R0 hmmm_io
scoreboard players operation P4 hmmm_io = R1 hmmm_io
scoreboard players operation P5 hmmm_io = R2 hmmm_io

function hmmm:float/32/add/main

# this is a monster function