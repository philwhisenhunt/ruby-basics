def three_sum(nums)
 

first = 0
last = nums.count - 1
triplet = []
final_array = []
sum = nil

while (first < last) do
    sum = nums[first] + nums[last]
    if nums.include?(sum)
        triplet << [sum, nums[first], nums[last]]
        final_array << triplet
        break
    else
        # how to get rid of the rest of them?
    end

end

return final_array
end

nums = [-1,0,1,2,-1,-4]
print three_sum(nums)