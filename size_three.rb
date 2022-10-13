def count_good_substrings(s)
    if s.length < 3
        return 0
    end

    good_substrings_count = 0
   l = 0
   r = 1
  

   while r < (s.length) do
    if r - l == 1 && s[l] != s[r]
        r += 1
    end

    if s[l] != s[r] && (r - l == 2)
        good_substrings_count += 1
        l += 1
    end

   
   
    r += 1
    end
    return good_substrings_count
end

s = "xyzzaz"
# s = "aababcabc"


puts count_good_substrings(s)