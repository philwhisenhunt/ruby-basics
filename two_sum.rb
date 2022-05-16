def two_sum(nums, target)

  
   #subtract the first number from the target
   count = nums.count - 1
    for i in 0..count do
        puts i
        goal = target - nums[i]
        if nums.include?(goal) 
            return [i, nums.index(goal)] unless nums.index(goal) == i    
        end
    end
 
end

# nums = [2,7,11,15]
# target = 9

nums = [2,5,5,11]
target = 10
# print two_sum(nums, target)

def two_sum_hash(nums, target)
    # puts nums.count - 1
    hash = {}
    count = nums.count - 1
    puts count.to_s + " is the count"
    for i in 0..count do
        difference = target - nums[i]
        if hash.include?(difference)
            return true
        end
        # puts i
        # hash[i] = nums[i]
        hash[i] = nums[i]
    end
    puts "The hash is: "
    print hash
end
nums = [2,5,5,11]
target = 10
print two_sum_hash(nums, target)