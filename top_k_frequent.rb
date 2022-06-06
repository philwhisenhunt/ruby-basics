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

    frequency = frequency.sort
    number_of_results = frequency.count

    k.times do |i|
        i = i + 1
        result.append(frequency[number_of_results - i][1])
    end
    return result

end
nums = [3,0,1,0]
k = 1
print top_k_frequent(nums, k)