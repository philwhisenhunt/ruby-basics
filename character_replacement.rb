
def character_replacement(ss, k)
    #replace pieces of s with capitalized versions k times
    l = 0
    r = 0
    count_of = 0
    flipped_array = []
    used_array = {}
    while r < ss.length do 
        # Loop through once
        # For each letter, see two things:
            # How long until the duplicate
            # How many different letters there are until that point
            distance = r - l
            r += 1
    end

    print used_array.count
end



ss = "ABAB"
k = 2
character_replacement(ss, k)