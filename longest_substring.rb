def length_of_longest_substring(s)

    now_array = s.split('')
    used_letters = {}
    max_length = 0
    length = 0

    l = 0
    r = 0

    while r < (now_array.length) do
        if used_letters.include?(now_array[r])
            if max_length < length
                max_length = length
            end
            l = r + 1
            r = l + 1
        end
        used_letters[now_array[r]] = r
        length += 1
        r = r + 1
        
    end

    return max_length
end

s = "abcabcbb"
# s = "abcabcbbabcd"
puts length_of_longest_substring(s)