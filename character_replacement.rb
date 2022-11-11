
def character_replacement(ss, k)
    #replace pieces of s with capitalized versions k times
    l = 0
    r = 0
    count_of = 0
    flipped_array = []
    used_array = {}
    longest_known_distance = 0
    while r < ss.length do 
        # Loop through once
        # For each letter, see two things:
            # How long until the duplicate
            if used_array.include?(ss[r])
                # figure out where and the location
                distance = r - l
                # and now that we know the distance, what do we do with it?

                longest_known_distance = distance if distance > longest_known_distance
                # compare the distance to the longest known distance
            else
                # otherwise add the letter and the location
                used_array[ss[r]] = r
            end
            # How many different letters there are until that point
            # distance = r - l
            r += 1
    end

    print longest_known_distance
end



ss = "ABAB"
k = 2
character_replacement(ss, k)