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
        if hash_it.include?(num)
            hash_it[num.to_s] = hash_it[num.to_s] + 1
        else
            # if not, add it to the hash_it
            hash_it[num.to_s] = 1
        end
       
    end
    # sort the hash from greatest to the least
    hash_it = hash_it.sort.to_h
    the_final_array = []
    k = k + 1
    for i in 1..k do
        the_final_array << hash_it[i.to_s]
    end
    return the_final_array
    # return the first two results
    
end
nums = [1,1,1,2,2,3]
k = 2
print top_k_frequent(nums, k)