def product_except_self(nums)
    hash_it = {}
    products = []
    instance_nums = nums
    nums.each do |i|
        # instance_nums = nums - [i]
        instance_nums.delete_at(nums.index(i))
        # print i
        # instance_nums = nums
        # hash_it[i] = nums.inject(:*)
        products.append(instance_nums.reject(&:nil?).inject(:*))
       
    end
    return products
end

nums = [1,2,3,4]
nums = [-1,1,0,-3,3]
nums = [0,0]

print product_except_self(nums)