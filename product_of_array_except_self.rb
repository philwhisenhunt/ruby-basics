def product_except_self(nums)
    hash_it = {}
    products = []
    nums.each do |i|
        nums = nums - [i]
        # hash_it[i] = nums.inject(:*)
        products.append(nums.inject(:*))
        # puts i
    end
    print products
end

nums = [1,2,3,4]

product_except_self(nums)