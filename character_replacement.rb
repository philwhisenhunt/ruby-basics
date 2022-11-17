
def character_replacement(ss, k)
 
 
    count = {}
    res = 0
    l = 0
    r = 0

    while r < ss.length do 
        count[ss[r]] = !count[ss[r]].nil? ? (1 + count[ss[r]]) : 0 

        if (r - 1 + 1) - count.values.max > k
            count[ss[l]] -= 1
            l += 1

        end


        res = [res, r - 1 + 1].max
        r += 1
    end

   
    print res
end



ss = "ABAB"
k = 2
character_replacement(ss, k)