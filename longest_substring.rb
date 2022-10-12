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
            

            # used_letters = {}
            # print used_letters
            # puts " "
            # puts used_letters.length
            if used_letters.length == 4
                puts "l is: " + l.to_s + " and r is: " + r.to_s
                print used_letters
            end
            length = used_letters.length
            l += 1
            r += 1
          

            while now_array[l] == now_array[l - 1] && l < r
                l += 1
                
            end

        end
        used_letters[now_array[r]] = r
        # length += 1
        r = r + 1
        # print used_letters
        # puts "And the length is: " + length.to_s
        # puts " "
    end

    return max_length
end

s = "abcabcbb"
s = "abcadbbb"
s = "pwwkew"
# s = "abcabcbbabcd"
puts length_of_longest_substring(s)