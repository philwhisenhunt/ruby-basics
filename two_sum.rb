def two_sum(nums, target)
    # for each number, add it to each other number 
    # compare that sum to target

    for i in 0..nums.count do
        rem = target - nums[i]
        if nums.include? rem
            return [i, nums.index(rem)]
        end
    end
    
end

nums = [2,7,11,15]
target = 9
print two_sum(nums, target)