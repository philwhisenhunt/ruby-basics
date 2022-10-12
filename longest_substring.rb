def length_of_longest_substring(s)

    now_array = s.split('')
    used_letters = {}
    max_length = 0
    length = 0

    now_array.each_with_index do |letter, index|
        if used_letters.include?(letter)
            max_length = length   
            length = 0
            used_letters = {}
        end

       used_letters[letter] = index     
       length += 1
    end

    return max_length
end

s = "abcabcbb"
# s = "abcabcbbabcd"
puts length_of_longest_substring(s)