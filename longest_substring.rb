def length_of_longest_substring(s)

    now_array = s.split('')
    # puts now_array
    used_letters = {}
    max_length = 0
    length = 0

    l = 0
    r = 0

    while r < (s.length) do
      
        if used_letters.include?(s[r])
            length = used_letters.length
            if max_length < length
                max_length = length
                
            end
            
           
            l = used_letters[s[r]] + 1
            r = l
            used_letters = {}


        end
        used_letters[s[r]] = r
    
        r = r + 1
     
    end

    # puts used_letters
    if max_length < used_letters.length
        max_length = used_letters.length
    end

    return max_length
end

s = "abcabcbb"
s = "abcadbbb"
# s = "pwwkew"
# s = "abcabcbbabcd"
s = " "
# s = "aab"
# s = 
puts length_of_longest_substring(s)