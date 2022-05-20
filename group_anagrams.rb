def group_anagrams(strs)
    #brute way
    # for each sort by alphabet
    # run through and compare

    #alternatively
    # make a hash
    # only go through the anagrams once. Sort it, then
    # see if that sorted version exists in the hash
    # if it does, put it in the existing group
    # if not, make it a new group

    hasher = {}
    strs.each do |str|
        sorted_version = str.chars.sort_by(&:downcase).join
        puts sorted_version
        if hasher.include?(sorted_version)
            # put it with that group
          
            hasher[sorted_version] = [hasher[sorted_version], str]
        else
            print " which is else \n"
            hasher[sorted_version] = str
        end
    end

    # return hasher

    
end

strs = ["eat","tea","tan","ate","nat","bat"]
print group_anagrams(strs)