def longest_consecutive(nums)

    hash_it = {}
    # take each number
    nums.each do |n|
        # hash_it[n] = 1

        if nums.include?(n - 1) || nums.include?(n + 1)
            next
        else
            nums.delete(n)
        end
            
    end
    print nums
    return nums.count
   
end

nums = [0,3,7,2,5,8,4,6,0,1]
nums = [100,4,200,1,3,2]
nums = [0]
nums = [0,-1]
nums = [9,1,4,7,3,-1,0,5,8,-1,6]
print longest_consecutive(nums)