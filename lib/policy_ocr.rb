module PolicyOcr

    #yes I should change this name
    def do_the_thing(string)
        
        answer = ""
        i = 0
        #last chunk of first line is 24..26
        while i <= 24 do
#     Look at first “chunk” of 3 characters.
#       If the chunk is “   ”
            if string[i..(i+2)] == "   "
        # Number is 1 or 4
        # Check 2nd line (same position of chunk)
        # second line first chunk is 27..29
                second_line = string[(i+27)..(i+29)]
                if second_line == "|_|"
                    # If chunk is “|_|”
                    # Number is 4. Proceed.
                    answer += "4"
        # If chunk is “  |”
        # Number is 1. Proceed.
                else
                    answer += "1"
                end
            else
                second_line = string[(i+27)..(i+29)]
                third_line = string[(i+54)..(i+56)]
        # If the chunk is “ _ “
        # Number is a 0, 2, 3, 5, 6, 7, 8, or 9
        # Check 2nd line (of that chunk)
        # If chunk is “  |”
                if second_line == "  |"
            # Number is 7. Proceed.
                    number += "7"
            # If the chunk is “| |”
                elsif second_line == "| |"
            # Number is 0. Proceed.
                    number += "0"
            # If chunk is “ _|”
                elsif second_line == " _|"
            # Number is 2 or 3
            # Check third line.
            # If chunk is “|_ “
                    if third_line == "|_ "
            # Number is 2. Proceed.
                        number += "2"
            # If chunk is “ _|”
                    else
            # Number is 3. Proceed.
                        number += "3"
                    end
        # If chunk is “|_|”
                elsif second_line == "|_|"
            # Number is 8 or 9
            # Check third line.
            # If chunk is “|_|”
                    if third_line == "|_|"
            # Number is 8. Proceed. 
                        answer += "8"
            # If chunk is “ _|”
                    else
            # Number is 9. Proceed.
                        answer += "9"
                    end
                else
            # If chunk is “|_ “
            # Number is 5 or 6
            # If chunk is “ _|”
                    if third_line == " _|"
                        answer += "5"
            # Number is 5. Proceed.
            # If chunk is “|_|”
                    else
            # Number is 6. Proceed.
                        answer += "6"
                    end
                end
            end
# Repeat with other 8 “chunks”
# so second chunk starts with 3..5 which is 0+3.. 2+3
            i += 3
        end
# Skip a line, and repeat until you reach the end.

    end

end
