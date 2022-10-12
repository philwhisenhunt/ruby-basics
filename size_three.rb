def count_good_substrings(s)
    if s.length < 3
        return 0
    end

    good_substrings_count = 0
   l = 0
   r = 1
  

   while r < (s.length) do
        if s[r] == s[r - 1]
            l += 1
            r = l + 1
        elsif (r - l) == 2 && s[l] == s[r]
            good_substrings_count += 1
            l += 1
            r += 1
        elsif (r - l) > 2
            l += 1
        else
            r += 1
        end
        puts "l is " + l.to_s
        puts "r is " + r.to_s
        puts " --"
   
    end
    return good_substrings_count
end

s = "xyzzaz"
s = "aababcabc"


puts count_good_substrings(s)