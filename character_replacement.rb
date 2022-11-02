
def character_replacement(ss, k)
    #replace pieces of s with capitalized versions k times
    l = 0
    r = 0
    count_of = 0
    flipped_array = []
    used_array = {}
    while r < ss.length do 
        # Loop through once
        # For each letter, see how long ago the same letter was
        # If that number is less than or equal to 2, save it to the counting array
        # At the end pick the highest number
    end

    print used_array.count
end



ss = "ABAB"
k = 2
character_replacement(ss, k)