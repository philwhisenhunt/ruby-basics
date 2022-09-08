def three_sum(nums)
 

    agreeable_numbers = []
    added_count = 0
    no_fly_list = []
    checkpoint_array = []
    list_of_targets = {}
    trio = []
    final_array = []
 
    nums.each_with_index do |n, index|
        target = 0 - n
        list_of_targets[target] = index
        # then search the rest of the array for numbers 
        # that together equal the target
        # maybe store the target along with its index location?

        # For every number
        # Check all the other numbers and add it to the first number
        # Then check if the array includes 0 minus that number
      
        # could we check the list_of_targets each time too?
        if list_of_targets.include?(n) && list_of_targets.include?(0)
            trio << [n, target, 0].sort
        end

        # what if while we are doing the first check we also subtract each number in the list of targets?
        # Is there a way to do this without running another .each loop?
        final_array << trio
        #should we sort trio too?
        final_array  = final_array.uniq
        # then go through each number and see if it can be added to another in the list to equal the opposite of n?
    end
    return final_array

    
end

nums = [-1,0,1,2,-1,-4]
print three_sum(nums)