require 'set'

def longest_consecutive(nums)
    num_set = nums.to_set
    longest = 0

    nums.each do |n|
        if !num_set.include?(n -1 )
            length = 0
            while num_set.include?(n + length)
                length += 1
            end
            longest = [length, longest].max
        end
    end
    return longest
end

nums = [0,3,7,2,5,8,4,6,0,1]
nums = [100,4,200,1,3,2]
nums = [0]
nums = [0,-1]
nums = [9,1,4,7,3,-1,0,5,8,-1,6]
print longest_consecutive(nums)