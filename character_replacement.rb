
def character_replacement(s, k)
    #replace pieces of s with capitalized versions k times
    l = 0
    r = 0
    used_array = {}
    while r < s.length do 
        puts r

        if used_array.include?(s[r])
            return
        end

        r += 1
    end
end

s = "ABAB"
k = 2
character_replacement(s, k)