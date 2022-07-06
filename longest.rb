def longest_consecutive(nums)

    hash_it = {}
    # take each number
    nums.each do |n|
        hash_it[n] = 1

        if nums.include?(n - 1)
            
            hash_it[n - 1] = 1
        else
            hash_it[n - 1] = 0
        end

        if nums.include?(n + 1)
            hash_it[n + 1] = 1
        else
            hash_it[n + 1] = 0
        end

    end
    puts "hash_it: "
    puts hash_it

    puts ""
    puts "hash_it sorted: "
    print hash_it.keys

    counter = 0
    high_score = 0
    # for m in  0 - hash_it.count..hash_it.count

    #     if !hash_it[m]
    #         next
    #     end

    #     if hash_it[m] < 1
    #         counter = 0
    #         next
    #     end
        
    #     counter += 1
        

    #     if counter > high_score
    #         high_score = counter
    #     end
        
    # end
    return high_score
    # print hash_it
    # sort in order
end

nums = [0,3,7,2,5,8,4,6,0,1]
nums = [100,4,200,1,3,2]
nums = [0]
nums = [0,-1]
nums = [9,1,4,7,3,-1,0,5,8,-1,6]
print longest_consecutive(nums)