def two_sum(nums, target)

  
    i = 1
    position_1 = 0 
    position_2 = position_1 + i
    while((nums[position_1] + nums[position_2]) != target) do
        i++
        position_2  = position_1 + i]
    end
    return [ position_1, position_2]
 
end

# nums = [2,7,11,15]
# target = 9

nums = [2,5,5,11]
target = 10
print two_sum(nums, target)