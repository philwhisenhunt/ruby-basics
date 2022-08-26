def three_sum(nums)
    # for each number, find the other two that are needed
    # check nums for those numbers

    agreeable_numbers = []
    added_count = 0
    no_fly_list = []
    checkpoint_array = []
    # for loop the length of the array
    nums.each_with_index do |n, index|
        # puts nums[index + 1]
      
    end
    return agreeable_numbers.uniq 
    # agreeable_numbers
    # check the number and the one in the index next to it
    # add the two together, and check the array for 0 minus that number
    
end

nums = [-1,0,1,2,-1,-4]
print three_sum(nums)