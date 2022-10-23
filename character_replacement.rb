
def character_replacement(ss, k)
    #replace pieces of s with capitalized versions k times
    l = 0
    r = 0
    used_array = {}
    while r < ss.length do 
        # puts r

        if used_array.include?(ss[r])
            break
        end

        used_array[ss[r]] = r.downcase if ss[r] == ss[r].upcase

        r += 1
    end
    print used_array
end



ss = "ABAB"
k = 2
character_replacement(ss, k)