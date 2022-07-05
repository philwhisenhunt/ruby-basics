def longest_consecutive(nums)

    hash_it = {}
    # take each number
    nums.each do |n|
        if nums.include?(n - 1)
            hash_it[n] = 1
            hash_it[n - 1] = 1
        end

        if nums.include?(n + 1)
            hash_it[n] = 1
            hash_it[n + 1] = 1
        end

    end

    counter = 0
    high_score = 0
    for m in  0..hash_it.count

        # if hash_it[m] < 1
        #     next
        # end
        
        counter += 1
        

        if counter > high_score
            high_score = counter
        end
        
    end
    return counter
    # print hash_it
    # sort in order
end

nums = [0,3,7,2,5,8,4,6,0,1]
print longest_consecutive(nums)