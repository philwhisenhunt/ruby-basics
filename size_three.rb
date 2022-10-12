def count_good_substrings(s)
    if s.length < 3
        return 0
    end

    good_substrings_count = 0
   l = 0
   r = 1
  

   while r < (s.length) do
    puts "r is " + r.to_s
    puts "l is " + l.to_s
    puts "---"
        if s[r] == s[r - 1]
            l += 1
        end

        if r - l == 2 && s[l] != s[r]
            good_substrings_count += 1
            l += 1
        end
        r += 1
    end
    return good_substrings_count
end

s = "xyzzaz"
puts count_good_substrings(s)