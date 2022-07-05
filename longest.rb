def longest_consecutive(nums)

    hash_it = {}
    # take each number
    nums.each do |n|
        if nums.include?(n - 1)
            hash_it[n] = 1
            hash_it[n - 1] = 1
        end

       

    end
    # sort in order
end

nums = [0,3,7,2,5,8,4,6,0,1]
print longest_consecutive(nums)