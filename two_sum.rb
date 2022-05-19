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

def two_sum(nums, target)
    hash = {}
    count = nums.count - 1
    for i in 0..count do
        difference = target - nums[i]
        difference = difference.to_s
        if hash.include?(difference)
            return [hash[difference], i]
        else
            #add it to the hash
        end
        number_storage = nums[i]
        hash[number_storage.to_s] = i
    end
end
nums = [2,7,11,15]
target = 9
print two_sum(nums, target)