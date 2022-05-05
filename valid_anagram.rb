def is_anagram(s, t)
    #take all the characters and make an array
 
    s = s.split("")
    t = t.split("")
     # does t.split() do the same thing?
    #sort all the characters
    s = s.sort
    #sort all the characters in the other array
    t = t.sort
    # loop through a count/2 ceil of the first array and find that spot in each place
    count = s.count
    for i in 0..count do
        if s[i] != t[i]
            puts s[i] 
            return false
        end

        # at the same time, loop through that count from the end
        if s[-i] != t[-i]
            return false
        end
    end
    return true
end

s = "anagram"
t = "nagaram"

puts is_anagram(s, t)