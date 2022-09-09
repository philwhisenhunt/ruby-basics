def three_sum(nums)
 

first = 0
last = nums.count - 1
triplet = []
final_array = []
sum = nil

while (first < last) do
    puts first
    puts last
    sum = nums[first] + nums[last]
    negative = 0 - sum
    if nums.include?(negative)
        triplet << [negative, nums[first], nums[last]]
        
        last -= 1
        first += 1
    else
        last -= 1
        first += 1
        # how to get rid of the rest of them?
    end
    final_array << triplet
end

return final_array
end

nums = [-1,0,1,2,-1,-4]
print three_sum(nums)