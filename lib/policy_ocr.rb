module PolicyOcr

    DIGITS = {
    " _ | ||_|" => "0",
    "     |  |" => "1",
    " _  _||_ " => "2",
    " _  _| _|" => "3",
    "   |_|  |" => "4",
    " _ |_  _|" => "5",
    " _ |_ |_|" => "6",
    " _   |  |" => "7",
    " _ |_||_|" => "8",
    " _ |_| _|" => "9"
    }

    def self.check_sum policy
        num_arr = policy.to_s.chars.reverse.map(&:to_i)
        # multiply each digit by index + 1 and add them together
        check = 0 
        num_arr.each_with_index do |num, i|
            check += num * (i + 1)
        end
        check % 11 == 0
    end

    def self.make_numbers(policies)
        #this gives me an array of each line as as a string
        
        file = File.open(policies)
        file_data = file.readlines.map(&:chomp)
        file.close

        
        all_answers = []
        #which string to do
        j = 0
        # look at first line (string)
        
        while j < file_data.count
            #position in string (reset i and answer for each policy)
            i = 0
            answer = ""
            # Look at first “chunk” of 3 characters
            while i < 27 do
                # First chunk: j = 0, i = 0..2
                # first_line = file_data[2][i..(i+2)]
                first_line = file_data[j][i..(i+2)]
                second_line = file_data[j+1][i..(i+2)]
                third_line = file_data[j+2][i..(i+2)]
                # combine the three strings...
                code = first_line + second_line + third_line
                # and use a case to find the right number
                new_digit = DIGITS[code] ? DIGITS[code] : "?"
                answer += new_digit                
                # Repeat with other 8 “chunks” by moving over by 3
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
        
        # returning answers as array
        return all_answers
        
        #end def
    end
#end module
end

a = PolicyOcr.make_numbers ('./spec/fixtures/sample.txt')
p a