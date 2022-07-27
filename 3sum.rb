def three_sum(nums)
    # for each number, find the other two that are needed
    # check nums for those numbers

    agreeable_numbers = []
    added_count = 0
    # for loop the length of the array
    nums.each_with_index do |n, index|
        # puts nums[index + 1]
        if !nums[index + 1].nil?
            checkpoint = n + nums[index + 1]
            searchpoint = checkpoint - 0
            if nums.include?(searchpoint)
                # puts searchpoint
                # stash all the numbers
                agreeable_numbers << searchpoint
                added_count += 1
                # agreeable_numbers << n #fix duplicate here
                # or make agreeable_numbers uniq here
                agreeable_numbers.uniq 
            end
        end
    end
    agreeable_numbers
    # check the number and the one in the index next to it
    # add the two together, and check the array for 0 minus that number
    
end

nums = [-1,0,1,2,-1,-4]
print three_sum(nums)