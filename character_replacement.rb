
def character_replacement(ss, k)
 
    count = {Hash.new(0)}
   
    res = 0
    l = 0

   for r in 0..(ss.length - 1)
        count[ss[r]] += 1
        while((r - l + 1) - count.values.max) > k
            count[ss[l]] -= 1
            l += 1
        end
        res = [res, (r - l + 1)].max 
    end

    return res
end



ss = "ABAB"
k = 2
character_replacement(ss, k)

ss = "ABAA"
k = 0
print character_replacement(ss, k)