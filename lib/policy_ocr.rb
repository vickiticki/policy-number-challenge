module PolicyOcr

    #yes I should change this name
    def self.make_numbers(textytext)
        #this gives me an array of each line as as a string
        file_data = File.read(textytext).split

        all_answers = []
        #position in string
        i = 0
        #which string to do
        j = 0
        # look at first line
        # will have to put this in a while loop based on j but figure that out later
        
        while j < file_data.count
            answer = ""
                # Look at first “chunk” of 3 characters. 
                # last chunk  is 24..26
            while i <= 24 do
                # First chunk: j = 0, i = 0..2
                first_line = file_data[j][i..(i+2)]
                second_line = file_data[j+1][i..(i+2)]
                third_line = file_data[j+2][i..(i+2)]
                # If the first line first chunk is “   ”
                if first_line == "   "
                # Number is 1 or 4
                # Check 2nd line (same position of chunk)
                    # If chunk is “|_|”
                    if second_line == "|_|"
                        # Number is 4. Proceed.
                        answer += "4"
                        # If chunk is “  |”
                    else
                        # Number is 1. Proceed.
                        number += "1"
                    end
                # If the first line first chunk is “ _ “
                else
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
                        if file_data[j+2][i..(i+2)] == "|_ "
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
                        if third_line ==  "|_|"
                    # Number is 8. Proceed. 
                            number += "8"
                    # If chunk is “ _|”
                        else
                    # Number is 9. Proceed.
                            number += "9"
                        end
                    # If second line chunk is “|_ “
                    else
                    # Number is 5 or 6
                    # If chunk is “ _|”
                        if third_line ==  " _|"
                    # Number is 5. Proceed.
                            number += "5"
                    # If chunk is “|_|”
                        else
                    # Number is 6. Proceed.
                            number += "6"
                        end
                    end
                    
                #end if first_line loop
                end
                    
            # Repeat with other 8 “chunks”
                i += 3
            #end while i loop
            end
            #put the answer in the answer array
            all_answers << answer

        # go to next policy
        # first policy starts at line 1, which is file_data[0]
        # second policy starts at line 5, whicle is file_data[4] so add 4
            j += 4
        # end of while j loop
        end

        #may want to make this a file or something idk
        return answer_array
   
    #end def
    end
#end module
end
