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
        sum = nums[first] + nums[last] + num
        if num == nums[first] || num == nums[last]
            first += 1
            next
        end
        print "Sum is "
        print sum
        puts ""
        if sum > 0
            first += 1
        elsif sum < 0
            last -= 1
        elsif sum == 0
            final_array << [nums[first], nums[last], num]
        end
    end
end
# while (first < last) do
   
 
#     # here we need to not check for itself.. 
#     sum = nums[first] + nums[last] 
#     if sum > 0
#         first += 1
#     elsif sum < 0
#         last -= 1
#     else
#         triplet = [negative, nums[first], nums[last]]
#     end

#     final_array << triplet if !triplet.empty?
# end

return final_array.uniq
end

nums = [-1,0,1,2,-1,-4]
print three_sum(nums)