def three_sum(nums)
    # for each number, find the other two that are needed
    # check nums for those numbers

    agreeable_numbers = []
    added_count = 0
    no_fly_list = []
    # for loop the length of the array
    nums.each_with_index do |n, index|
        # puts nums[index + 1]
        if !nums[index + 1].nil? 
            #this instead needs to check all the other numbers
            # or we could all of them in, sorted
            #then remove dupes
            checkpoint = n + nums[index + 1]
            searchpoint = 0 - checkpoint 
            # puts !nums.include?(searchpoint) 
            if nums.include?(searchpoint) && !no_fly_list.include?(searchpoint) 
                # puts searchpoint
                # stash all the numbers
                agreeable_numbers << [checkpoint, searchpoint, nums[index + 1]].sort
                
                no_fly_list << n
                no_fly_list << searchpoint
                # agreeable_numbers << n #fix duplicate here
                # or make agreeable_numbers uniq here
                
            end
            # consider adding a nofly list to skip numbers
            # if !no_fly_list.include?(n)
          
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