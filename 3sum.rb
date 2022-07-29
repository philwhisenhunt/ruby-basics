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
            searchpoint = 0 - checkpoint 
            if nums.include?(searchpoint)
                # puts searchpoint
                # stash all the numbers
                agreeable_numbers << [checkpoint, searchpoint, nums[index + 1]]
                added_count += 1
                # agreeable_numbers << n #fix duplicate here
                # or make agreeable_numbers uniq here
                next
            end
            # consider adding a nofly list to skip numbers
            # if !no_fly_list.include?(n)
            next
            #make a new final array here
            #or cycle through array and export them three at a time
        end
    end
    return agreeable_numbers.uniq 
    # agreeable_numbers
    # check the number and the one in the index next to it
    # add the two together, and check the array for 0 minus that number
    
end

nums = [-1,0,1,2,-1,-4]
print three_sum(nums)