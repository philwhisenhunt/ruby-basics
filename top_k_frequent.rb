def top_k_frequent(nums, k)
    # Given an integer array nums and an integer k, 
    # return the k most frequent elements. 
    # You may return the answer in any order.

    # create a hash
    count = {}
    frequency = []

    nums.each do |n|
        count[n] = 1 + (count[n] || 0)
    end


    count.each do |n, c|
        # print n
        frequency.append([c, n])
    end

    return frequency

end
nums = [1,1,1,2,2,3]
k = 2
print top_k_frequent(nums, k)