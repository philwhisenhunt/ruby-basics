def longest_consecutive(nums)

    hash_it = {}
    end_numbers = {}
    start_numbers = {}
    # take each number
    nums.each do |n|

        if(nums.include?(n+1) && !nums.include?(n-1) )
            start_numbers[n] = 1
        end

        # if(nums.include?(n-1) && !nums.include?(n+1) )
        #     end_numbers[n] = 1
        # end
            
    end
counter = 0
    start_numbers.each do |s|
        
        if nums.include?(s+1)
            counter += 1
            s += 1
        end
    end
    print start_numbers.keys
 
   
end

nums = [0,3,7,2,5,8,4,6,0,1]
nums = [100,4,200,1,3,2]
nums = [0]
nums = [0,-1]
nums = [9,1,4,7,3,-1,0,5,8,-1,6]
print longest_consecutive(nums)