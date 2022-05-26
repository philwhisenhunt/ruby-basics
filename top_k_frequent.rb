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
    sort_it = hash_it.sort
    print sort_it
    the_final_array = []
    count = sort_it.count - 1
    # puts "Count is: " + count.to_s
    # puts "K is: " + k.to_s
    count.downto(k) do |i|
        # puts sort_it[i][0].to_i
        the_final_array << sort_it[i]
    end
    # print the_final_array
    # return the_final_array

    
end
nums = [1,1,1,2,2,3]
k = 2
print top_k_frequent(nums, k)