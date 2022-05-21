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

    storage_array = []
    hasher = {}
    strs.each do |str|
        sorted_version = str.chars.sort_by(&:downcase).join

        if hasher.include?(sorted_version)
            hasher[sorted_version] = hasher[sorted_version].append(str)
        else
            hasher[sorted_version] = [str]
        end
    end

    hasher.each do |key, value|
        # puts value
        storage_array = storage_array.append(value)
    end
    return storage_array

    
end

strs = ["eat","tea","tan","ate","nat","bat"]
print group_anagrams(strs)