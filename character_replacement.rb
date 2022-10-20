class ChangeCase
def character_replacement(s, k)
    #replace pieces of s with capitalized versions k times
    l = 0
    r = 0
    used_array = {}
    while r < s.length do 
        # puts r

        if used_array.include?(s[r])
            break
        end

        used_array[s[r]] = r.change_case

        r += 1
    end
    print used_array
end

    def change_case(r)
        return r

    end
end
s = "ABAB"
k = 2
character_replacement(s, k)