def two_sum(nums, target)
    # for each number, add it to each other number 
    # compare that sum to target

    # print "nums is: " + nums.to_s
    # puts ""
    # print "target is: " + target.to_s
    # puts ""
    minus_one_count = nums.count - 1
    for i in 0..minus_one_count do
     for j in 1..minus_one_count do
        puts "i:" + i.to_s + " j:" + j.to_s
        if nums[i] + nums[j] == target
            return [i, j]
        end
     end
    end
    
end

# nums = [2,7,11,15]
# target = 9

nums = [3,2,4]
target = 6
print two_sum(nums, target)