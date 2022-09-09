def three_sum(nums)
 

first = 0
last = nums.count - 1
triplet = []
final_array = []
sum = nil
nums = nums.sort
while (first < last) do
   
    sum = nums[first] + nums[last]
    if nums[first] == nums[last]
        break
    end
    negative = 0 - sum
    if nums.include?(negative)
        triplet = [negative, nums[first], nums[last]]
        
        # puts triplet
        last -= 1
        first += 1
    else
        last -= 1
        first += 1
        # how to get rid of the rest of them?
    end
    final_array << triplet.sort
end

return final_array.uniq
end

nums = [-1,0,1,2,-1,-4]
print three_sum(nums)