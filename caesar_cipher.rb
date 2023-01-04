def translate(message, shift)
    #Check if shift is not more than a full alphabet or zero
    if shift > 26 || shift < 1
        return
    end
    #Input message split per character and changed to a ASCII value
    array_message = message.each_byte.to_a
    #loop over every ASCII Value and shift the number 
    first_step = array_message.map do |num| 
        shifted_num = (num + shift)
        shifted_looped_num = (num + shift -26)
        #Capital Letters
        if num.between?(65,90)
            #check if looping is needed
            if shifted_num > 90
                shifted_looped_num.chr
            else 
                shifted_num.chr
            end
        #Non-Capital Letters
        elsif num.between?(97,122)
            #check if looping is needed
            if shifted_num > 122
                shifted_looped_num.chr
            else
            shifted_num.chr
            end
        #Non-letter values
        else 
            num.chr
    end
    end
    #Return final string from shifted Array
    first_step.join()
end
