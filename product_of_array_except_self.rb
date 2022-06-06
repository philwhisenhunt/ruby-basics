def product_except_self(nums)
    hash_it = {}
    products = []
    nums.each do |i|
        instance_nums = nums - [i]
        # hash_it[i] = nums.inject(:*)
        products.append(instance_nums.inject(:*))
       
    end
    return products
end

nums = [1,2,3,4]

print product_except_self(nums)