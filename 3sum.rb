def three_sum(nums)
 

    agreeable_numbers = []
    added_count = 0
    no_fly_list = []
    checkpoint_array = []
    list_of_targets = {}
    trio = []
 
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
            trio << [n, target, 0]
        end

        # then go through each number and see if it can be added to another in the list to equal the opposite of n?
    end
    return list_of_targets

    
end

nums = [-1,0,1,2,-1,-4]
print three_sum(nums)