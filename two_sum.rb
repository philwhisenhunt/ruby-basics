def two_sum(nums, target)
    # for each number, add it to each other number 
    # compare that sum to target

    count = nums.count
    for i in 0..count do
        position = i
        while (position < count) do
          puts "Position is " + position.to_s
          position += 1
        end
    end
    
end

# nums = [2,7,11,15]
# target = 9

nums = [3,2,4]
target = 6
print two_sum(nums, target)