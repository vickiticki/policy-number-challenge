module PolicyOcr

    #yes I should change this name
    def do_the_thing(textytext)
        #this gives me an array of each line as as a string
        file_data = File.read(textytext).split


        answer = ""
        i = 0
        j = 0
        # look at first line
        while j < 3
            # Look at first “chunk” of 3 characters.
            # last chunk  is 24..26
            while i <= 24 do
            # If the chunk is “   ”
            # Number is 1 or 4
            # Check 2nd line (same position of chunk)
            # If chunk is “|_|”
            # Number is 4. Proceed.
            # If chunk is “  |”
            # Number is 1. Proceed.
            # If the chunk is “ _ “
            # Number is a 0, 2, 3, 5, 6, 7, 8, or 9
            # Check 2nd line (of that chunk)
            # If chunk is “  |”
            # Number is 7. Proceed.
            # If the chunk is “| |”
            # Number is 0. Proceed.
            # If chunk is “ _|”
            # Number is 2 or 3
            # Check third line.
            # If chunk is “|_ “
            # Number is 2. Proceed.
            # If chunk is “ _|”
            # Number is 3. Proceed.
            # If chunk is “|_|”
            # Number is 8 or 9
            # Check third line.
            # If chunk is “|_|”
            # Number is 8. Proceed. 
            # If chunk is “ _|”
            # Number is 9. Proceed.
            # If chunk is “|_ “
            # Number is 5 or 6
            # If chunk is “ _|”
            # Number is 5. Proceed.
            # If chunk is “|_|”
            # Number is 6. Proceed.
                  
    # Repeat with other 8 “chunks”
                i += 3
            end
            j += 1
        end
# Skip a line, and repeat until you reach the end.

    end

end
