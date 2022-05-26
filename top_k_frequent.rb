def top_k_frequent(nums, k)
    # Given an integer array nums and an integer k, 
    # return the k most frequent elements. 
    # You may return the answer in any order.

    # create a hash
    hash_it = {}
    #iterate through array
    nums.each do |num|
         # for each one, check if it is in the hash
        # if it is, increase the value for that key by one
        if hash_it.key?(num.to_s)
            
            hash_it[num.to_s] = hash_it[num.to_s] + 1
        else
            # if not, add it to the hash_it
            hash_it[num.to_s] = 1
        end
       
    end

    # puts hash_it
    sort_it = hash_it.sort_by{|k,v| v}
    count = sort_it.count
    puts "the count is: " + count.to_s
    print sort_it
    final = []
    count.downto(k) do |i|
        puts sort_it[i][1]
        # puts sort_it[i]
        # final << sort_it[i][0].to_i
    end
    return final


    
end
nums = [1,1,1,2,2,3]
k = 2
print top_k_frequent(nums, k)