def is_anagram(s, t)
    #take all the characters and make an array
    s = s.split
    t = t.split # does t.split() do the same thing?
    #sort all the characters
    s = s.sort
    #sort all the characters in the other array
    t = t.split
    # loop through a count/2 ceil of the first array and find that spot in each place
    # at the same time, loop through that count from the end
end