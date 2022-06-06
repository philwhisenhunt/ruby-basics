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
    result = []
    # now we need to loop through the results K times
    # k.times do
    #     result.append(frequency[k])
    # end
    # result = frequency.first(k)
    frequency = frequency.sort
    number_of_results = frequency.count
    # print frequency[number_of_results - 1]
    # puts ""
    # puts number_of_results
    k.times do |i|
        result.append(frequency[number_of_results - i])
    end
    # return result

end
nums = [3,0,1,0]
k = 1
print top_k_frequent(nums, k)