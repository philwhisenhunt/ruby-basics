def three_sum(nums)
 

first = 0
last = nums.count - 1
triplet = []
final_array = []
sum = nil
nums = nums.sort
print nums
puts ""
nums.each do |num|
    while (first < last )
        if num == nums[first] || num == nums[last]
            first += 1
            next
        end
        sum = nums[first] + nums[last] + num
       
        print "Sum is "
        print sum
        puts ""
        if sum > 0
            first += 1
        elsif sum < 0
            last -= 1
        elsif sum == 0
            final_array << [nums[first], nums[last], num]
            puts final_array
        end
    end
end

return final_array.uniq
end

nums = [-1,0,1,2,-1,-4]
print three_sum(nums)