def product_except_self(nums)
    hash_it = {}
    nums.each do |i|
        nums = nums.delete(i)
        hash_it[i] = nums.inject(:*)
        # puts i
    end
    print hash_it
end

nums = [1,2,3,4]

product_except_self(nums)