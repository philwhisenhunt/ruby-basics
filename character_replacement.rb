
def character_replacement(ss, k)
 
 
    count = {}
    res = 0
    l = 0
    r = 0

    while r < ss.length do 
        # puts "THE LETTER IS: " + ss[r]
        r += 1
        count[ss[r]] = !count[ss[r]].nil? ? (1 + count[ss[r]]) : 0 

        puts count.values.max
        while((r - l + 1) - count.values.max) > k
         
            count[ss[l]] -= 1
            l += 1

        end

        
        res = [res, (r - l + 1)].max
        # puts res
       
    end

#    puts ""
    return res
end



ss = "ABAB"
k = 2
character_replacement(ss, k)

ss = "ABAA"
k = 0
print character_replacement(ss, k)