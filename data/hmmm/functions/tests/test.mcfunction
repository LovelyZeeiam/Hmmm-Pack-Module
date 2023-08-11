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
# @modifies temp.[0..25]
scoreboard players operation 0 temp = P0 hmmm_io
scoreboard players operation 1 temp = P1 hmmm_io
scoreboard players operation 2 temp = P2 hmmm_io

scoreboard players operation 3 temp = P3 hmmm_io
scoreboard players operation 4 temp = P4 hmmm_io
scoreboard players operation 5 temp = P5 hmmm_io

scoreboard players operation P0 hmmm_io = P3 hmmm_io
scoreboard players operation P1 hmmm_io = P4 hmmm_io
scoreboard players operation P2 hmmm_io = P5 hmmm_io

function hmmm:extended_float/32/float_type/main

scoreboard players operation P0 hmmm_io = 0 temp
scoreboard players operation P1 hmmm_io = 1 temp
scoreboard players operation P2 hmmm_io = 2 temp

scoreboard players operation P3 hmmm_io = 3 temp
scoreboard players operation P4 hmmm_io = 4 temp
scoreboard players operation P5 hmmm_io = 5 temp

scoreboard players set 0 temp 1
execute if score R0 hmmm_io matches 2 run function hmmm:extended_float/32/power/not_integer_exponent/main
## execute if score 0 temp matches 1 run function hmmm:extended_float/32/power/integer_exponent/main

    scoreboard players set 0 temp 1
    # execute if score P4 hmmm_io matches ..-1 run function hmmm:extended_float/32/power/integer_exponent/zero
    ##execute if score 0 temp matches 1 if score P3 hmmm_io matches 1 run function hmmm:extended_float/32/power/integer_exponent/negative
    
        scoreboard players operation 9 temp = P3 hmmm_io
        scoreboard players operation 10 temp = P4 hmmm_io
        scoreboard players operation 11 temp = P5 hmmm_io

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
        scoreboard players operation P4 hmmm_io = 10 temp
        scoreboard players operation P5 hmmm_io = 11 temp

        ## function hmmm:extended_float/32/power/integer_exponent/main
            scoreboard players set 0 temp 1
            execute if score P4 hmmm_io matches ..-1 run function hmmm:extended_float/32/power/integer_exponent/zero
            execute if score 0 temp matches 1 if score P3 hmmm_io matches 1 run function hmmm:extended_float/32/power/integer_exponent/negative
            execute if score 0 temp matches 1 if score P4 hmmm_io matches 0 run function hmmm:extended_float/32/power/integer_exponent/one
            ## execute if score 0 temp matches 1 run function hmmm:extended_float/32/power/integer_exponent/check_even
                scoreboard players operation 0 temp = P0 hmmm_io
                scoreboard players operation 1 temp = P1 hmmm_io
                scoreboard players operation 2 temp = P2 hmmm_io

                scoreboard players operation 3 temp = P3 hmmm_io
                scoreboard players operation 4 temp = P4 hmmm_io
                scoreboard players operation 5 temp = P5 hmmm_io

                scoreboard players operation P0 hmmm_io = P3 hmmm_io
                scoreboard players operation P1 hmmm_io = P4 hmmm_io
                scoreboard players operation P2 hmmm_io = P5 hmmm_io

                function hmmm:extended_float/32/float_type/main

                scoreboard players operation P0 hmmm_io = 0 temp
                scoreboard players operation P1 hmmm_io = 1 temp
                scoreboard players operation P2 hmmm_io = 2 temp

                scoreboard players operation P3 hmmm_io = 3 temp
                scoreboard players operation P4 hmmm_io = 4 temp
                scoreboard players operation P5 hmmm_io = 5 temp

                scoreboard players set 0 temp 1
                # assume decimals are even
                execute if score R0 hmmm_io matches 0 run function hmmm:extended_float/32/power/integer_exponent/even
                ## execute if score 0 temp matches 1 if score R0 hmmm_io matches 1 run function hmmm:extended_float/32/power/integer_exponent/odd
                    scoreboard players operation 11 temp = P3 hmmm_io
                    scoreboard players operation 12 temp = P4 hmmm_io
                    scoreboard players operation 13 temp = P5 hmmm_io

                    data modify storage calculate stack append value [0,0,0]
                    execute store result storage calculate stack[-1][0] int 1 run scoreboard players operation P3 hmmm_io = P0 hmmm_io
                    execute store result storage calculate stack[-1][1] int 1 run scoreboard players operation P4 hmmm_io = P1 hmmm_io
                    execute store result storage calculate stack[-1][2] int 1 run scoreboard players operation P5 hmmm_io = P2 hmmm_io


                    function hmmm:float/32/multiply/main

                    # n
                    scoreboard players operation P0 hmmm_io = 11 temp
                    scoreboard players operation P1 hmmm_io = 12 temp
                    scoreboard players operation P2 hmmm_io = 13 temp

                    # x^2
                    scoreboard players operation 11 temp = R0 hmmm_io
                    scoreboard players operation 12 temp = R1 hmmm_io
                    scoreboard players operation 13 temp = R2 hmmm_io

                    scoreboard players set P3 hmmm_io 0
                    scoreboard players set P4 hmmm_io 0
                    scoreboard players set P5 hmmm_io 0

                    function hmmm:float/32/subtract/main

                    scoreboard players operation P0 hmmm_io = 11 temp
                    scoreboard players operation P1 hmmm_io = 12 temp
                    scoreboard players operation P2 hmmm_io = 13 temp
                    # (n-1)/2
                    scoreboard players operation P3 hmmm_io = R0 hmmm_io
                    scoreboard players operation P4 hmmm_io = R1 hmmm_io
                    scoreboard players remove P4 hmmm_io 1
                    scoreboard players operation P5 hmmm_io = R2 hmmm_io

                    ## function hmmm:extended_float/32/power/integer_exponent/main
                        scoreboard players set 0 temp 1
                        execute if score P4 hmmm_io matches ..-1 run function hmmm:extended_float/32/power/integer_exponent/zero
                        execute if score 0 temp matches 1 if score P3 hmmm_io matches 1 run function hmmm:extended_float/32/power/integer_exponent/negative
                        ## execute if score 0 temp matches 1 if score P4 hmmm_io matches 0 run function hmmm:extended_float/32/power/integer_exponent/one
                            scoreboard players operation P0 hmmm_io = R0 hmmm_io
                            scoreboard players operation P1 hmmm_io = R1 hmmm_io
                            scoreboard players operation P2 hmmm_io = R2 hmmm_io

                            scoreboard players set 0 temp 0
                        # execute if score 0 temp matches 1 run function hmmm:extended_float/32/power/integer_exponent/check_even

                        # scoreboard players set 0 temp 0
                    # scoreboard players operation P0 hmmm_io = R0 hmmm_io
                    # scoreboard players operation P1 hmmm_io = R1 hmmm_io
                    # scoreboard players operation P2 hmmm_io = R2 hmmm_io

                    # execute store result score P3 hmmm_io run data get storage calculate stack[-1][0]
                    # execute store result score P4 hmmm_io run data get storage calculate stack[-1][1]
                    # execute store result score P5 hmmm_io run data get storage calculate stack[-1][2]
                    # data remove storage calculate stack[-1]
                    # function hmmm:float/32/multiply/main

                    # scoreboard players set 0 temp 0



                # execute if score 0 temp matches 1 if score R0 hmmm_io matches 2 run say ERROR: exponent somehow not an integer
                # scoreboard players set 0 temp 0

            # scoreboard players set 0 temp 0

        # scoreboard players set 0 temp 0
    # execute if score 0 temp matches 1 if score P4 hmmm_io matches 0 run function hmmm:extended_float/32/power/integer_exponent/one
    # execute if score 0 temp matches 1 run function hmmm:extended_float/32/power/integer_exponent/check_even

    # scoreboard players set 0 temp 0