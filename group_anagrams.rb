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
    strs.each do |str|
        puts "And now the array is: " + storage_array.to_s
        sorted_version = str.chars.sort_by(&:downcase).join
        puts "SORTED: " + sorted_version
        if storage_array.include?(sorted_version)
            # put it with that group
          print "TRUE"
            storage_array[sorted_version] = [hasher[sorted_version], str]
        else
            # print " which is else \n"
            storage_array = storage_array.append(str)
        end
    end

    return storage_array

    
end

strs = ["eat","tea","tan","ate","nat","bat"]
print group_anagrams(strs)