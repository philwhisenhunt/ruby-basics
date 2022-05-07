def two_sum(nums, target)
    # for each number, add it to each other number 
    # compare that sum to target

    count = nums.count - 1
    for i in 0..count do
        position = i
        while (position < count) do
            rem = target - nums[i]
            if nums.include? rem
                return [i, nums.index(rem)]
            else
                position += 1
            end
        end
    end
    
end

# nums = [2,7,11,15]
# target = 9

nums = [3,2,4]
target = 6
print two_sum(nums, target)