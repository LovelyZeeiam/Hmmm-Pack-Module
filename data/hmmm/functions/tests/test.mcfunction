scoreboard players set P0 hmmm_io 0
scoreboard players set P1 hmmm_io 1
scoreboard players set P2 hmmm_io 0

scoreboard players set P3 hmmm_io 1
scoreboard players set P4 hmmm_io 1
scoreboard players set P5 hmmm_io 4194304


#> hmmm:extended_float/32/power/main
#   Return the first 32-bit float raised to the power of the second.
##
# @params
#   hmmm_io.P[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#   hmmm_io.P[3, 4, 5]
#       32-bit sign, 32-bit exponent, 32-bit significand
# @returns
#   hmmm_io.R[0, 1, 2]
#       32-bit sign, 32-bit exponent, 32-bit significand
#
# @modifies hmmm_temp.[0..25]
scoreboard players operation 0 hmmm_temp = P0 hmmm_io
scoreboard players operation 1 hmmm_temp = P1 hmmm_io
scoreboard players operation 2 hmmm_temp = P2 hmmm_io

scoreboard players operation 3 hmmm_temp = P3 hmmm_io
scoreboard players operation 4 hmmm_temp = P4 hmmm_io
scoreboard players operation 5 hmmm_temp = P5 hmmm_io

scoreboard players operation P0 hmmm_io = P3 hmmm_io
scoreboard players operation P1 hmmm_io = P4 hmmm_io
scoreboard players operation P2 hmmm_io = P5 hmmm_io

function hmmm:extended_float/32/float_type/main

scoreboard players operation P0 hmmm_io = 0 hmmm_temp
scoreboard players operation P1 hmmm_io = 1 hmmm_temp
scoreboard players operation P2 hmmm_io = 2 hmmm_temp

scoreboard players operation P3 hmmm_io = 3 hmmm_temp
scoreboard players operation P4 hmmm_io = 4 hmmm_temp
scoreboard players operation P5 hmmm_io = 5 hmmm_temp

scoreboard players set 0 hmmm_temp 1
execute if score R0 hmmm_io matches 2 run function hmmm:extended_float/32/power/not_integer_exponent/main
## execute if score 0 hmmm_temp matches 1 run function hmmm:extended_float/32/power/integer_exponent/main

    scoreboard players set 0 hmmm_temp 1
    # execute if score P4 hmmm_io matches ..-1 run function hmmm:extended_float/32/power/integer_exponent/zero
    ##execute if score 0 hmmm_temp matches 1 if score P3 hmmm_io matches 1 run function hmmm:extended_float/32/power/integer_exponent/negative
    
        scoreboard players operation 9 hmmm_temp = P3 hmmm_io
        scoreboard players operation 10 hmmm_temp = P4 hmmm_io
        scoreboard players operation 11 hmmm_temp = P5 hmmm_io

        scoreboard players operation P3 hmmm_io = P0 hmmm_io
        scoreboard players operation P4 hmmm_io = P1 hmmm_io
        scoreboard players operation P5 hmmm_io = P2 hmmm_io

        scoreboard players set P0 hmmm_io 0
        scoreboard players set P1 hmmm_io 0
        scoreboard players set P2 hmmm_io 0

        function hmmm:float/32/divide/main

        scoreboard players operation P0 hmmm_io = R0 hmmm_io
        scoreboard players operation P1 hmmm_io = R1 hmmm_io
        scoreboard players operation P2 hmmm_io = R2 hmmm_io

        scoreboard players set P3 hmmm_io 0
        scoreboard players operation P4 hmmm_io = 10 hmmm_temp
        scoreboard players operation P5 hmmm_io = 11 hmmm_temp

        ## function hmmm:extended_float/32/power/integer_exponent/main
            scoreboard players set 0 hmmm_temp 1
            execute if score P4 hmmm_io matches ..-1 run function hmmm:extended_float/32/power/integer_exponent/zero
            execute if score 0 hmmm_temp matches 1 if score P3 hmmm_io matches 1 run function hmmm:extended_float/32/power/integer_exponent/negative
            execute if score 0 hmmm_temp matches 1 if score P4 hmmm_io matches 0 run function hmmm:extended_float/32/power/integer_exponent/one
            ## execute if score 0 hmmm_temp matches 1 run function hmmm:extended_float/32/power/integer_exponent/check_even
                scoreboard players operation 0 hmmm_temp = P0 hmmm_io
                scoreboard players operation 1 hmmm_temp = P1 hmmm_io
                scoreboard players operation 2 hmmm_temp = P2 hmmm_io

                scoreboard players operation 3 hmmm_temp = P3 hmmm_io
                scoreboard players operation 4 hmmm_temp = P4 hmmm_io
                scoreboard players operation 5 hmmm_temp = P5 hmmm_io

                scoreboard players operation P0 hmmm_io = P3 hmmm_io
                scoreboard players operation P1 hmmm_io = P4 hmmm_io
                scoreboard players operation P2 hmmm_io = P5 hmmm_io

                function hmmm:extended_float/32/float_type/main

                scoreboard players operation P0 hmmm_io = 0 hmmm_temp
                scoreboard players operation P1 hmmm_io = 1 hmmm_temp
                scoreboard players operation P2 hmmm_io = 2 hmmm_temp

                scoreboard players operation P3 hmmm_io = 3 hmmm_temp
                scoreboard players operation P4 hmmm_io = 4 hmmm_temp
                scoreboard players operation P5 hmmm_io = 5 hmmm_temp

                scoreboard players set 0 hmmm_temp 1
                # assume decimals are even
                execute if score R0 hmmm_io matches 0 run function hmmm:extended_float/32/power/integer_exponent/even
                ## execute if score 0 hmmm_temp matches 1 if score R0 hmmm_io matches 1 run function hmmm:extended_float/32/power/integer_exponent/odd
                    scoreboard players operation 11 hmmm_temp = P3 hmmm_io
                    scoreboard players operation 12 hmmm_temp = P4 hmmm_io
                    scoreboard players operation 13 hmmm_temp = P5 hmmm_io

                    data modify storage calculate stack append value [0,0,0]
                    execute store result storage calculate stack[-1][0] int 1 run scoreboard players operation P3 hmmm_io = P0 hmmm_io
                    execute store result storage calculate stack[-1][1] int 1 run scoreboard players operation P4 hmmm_io = P1 hmmm_io
                    execute store result storage calculate stack[-1][2] int 1 run scoreboard players operation P5 hmmm_io = P2 hmmm_io


                    function hmmm:float/32/multiply/main

                    # n
                    scoreboard players operation P0 hmmm_io = 11 hmmm_temp
                    scoreboard players operation P1 hmmm_io = 12 hmmm_temp
                    scoreboard players operation P2 hmmm_io = 13 hmmm_temp

                    # x^2
                    scoreboard players operation 11 hmmm_temp = R0 hmmm_io
                    scoreboard players operation 12 hmmm_temp = R1 hmmm_io
                    scoreboard players operation 13 hmmm_temp = R2 hmmm_io

                    scoreboard players set P3 hmmm_io 0
                    scoreboard players set P4 hmmm_io 0
                    scoreboard players set P5 hmmm_io 0

                    function hmmm:float/32/subtract/main

                    scoreboard players operation P0 hmmm_io = 11 hmmm_temp
                    scoreboard players operation P1 hmmm_io = 12 hmmm_temp
                    scoreboard players operation P2 hmmm_io = 13 hmmm_temp
                    # (n-1)/2
                    scoreboard players operation P3 hmmm_io = R0 hmmm_io
                    scoreboard players operation P4 hmmm_io = R1 hmmm_io
                    scoreboard players remove P4 hmmm_io 1
                    scoreboard players operation P5 hmmm_io = R2 hmmm_io

                    ## function hmmm:extended_float/32/power/integer_exponent/main
                        scoreboard players set 0 hmmm_temp 1
                        execute if score P4 hmmm_io matches ..-1 run function hmmm:extended_float/32/power/integer_exponent/zero
                        execute if score 0 hmmm_temp matches 1 if score P3 hmmm_io matches 1 run function hmmm:extended_float/32/power/integer_exponent/negative
                        ## execute if score 0 hmmm_temp matches 1 if score P4 hmmm_io matches 0 run function hmmm:extended_float/32/power/integer_exponent/one
                            scoreboard players operation P0 hmmm_io = R0 hmmm_io
                            scoreboard players operation P1 hmmm_io = R1 hmmm_io
                            scoreboard players operation P2 hmmm_io = R2 hmmm_io

                            scoreboard players set 0 hmmm_temp 0
                        # execute if score 0 hmmm_temp matches 1 run function hmmm:extended_float/32/power/integer_exponent/check_even

                        # scoreboard players set 0 hmmm_temp 0
                    # scoreboard players operation P0 hmmm_io = R0 hmmm_io
                    # scoreboard players operation P1 hmmm_io = R1 hmmm_io
                    # scoreboard players operation P2 hmmm_io = R2 hmmm_io

                    # execute store result score P3 hmmm_io run data get storage calculate stack[-1][0]
                    # execute store result score P4 hmmm_io run data get storage calculate stack[-1][1]
                    # execute store result score P5 hmmm_io run data get storage calculate stack[-1][2]
                    # data remove storage calculate stack[-1]
                    # function hmmm:float/32/multiply/main

                    # scoreboard players set 0 hmmm_temp 0



                # execute if score 0 hmmm_temp matches 1 if score R0 hmmm_io matches 2 run say ERROR: exponent somehow not an integer
                # scoreboard players set 0 hmmm_temp 0

            # scoreboard players set 0 hmmm_temp 0

        # scoreboard players set 0 hmmm_temp 0
    # execute if score 0 hmmm_temp matches 1 if score P4 hmmm_io matches 0 run function hmmm:extended_float/32/power/integer_exponent/one
    # execute if score 0 hmmm_temp matches 1 run function hmmm:extended_float/32/power/integer_exponent/check_even

    # scoreboard players set 0 hmmm_temp 0