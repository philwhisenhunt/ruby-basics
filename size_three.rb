def count_good_substrings(s)
    if s.length < 3
        return 0
    end

    good_substrings_count = 0
   l = 0
   r = 1
  

   while r < (s.length) do
  
# puts s[l]
# puts s[r]
# puts "---"
    if s[l] != s[r] && s[r] != s[r - 1] && (r - l == 2)
        good_substrings_count += 1
        
    end

  if s[r] == s[r - 1]
    l = r
  end

    if r - l == 2
        l += 1
    end

   
   
    r += 1
    end
    return good_substrings_count
end

s = "xyzzaz"
s = "aababcabc"


puts count_good_substrings(s)