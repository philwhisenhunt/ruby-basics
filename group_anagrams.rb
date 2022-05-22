def group_anagrams(strs)


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
        storage_array = storage_array.append(value)
    end
    return storage_array

    
end

strs = ["eat","tea","tan","ate","nat","bat"]
print group_anagrams(strs)