def product_except_self(nums)
    hash_it = {}
    products = []
    instance_nums = nums
    hold_array = []
    nums.each do |i|
        # instance_nums = nums - [i]
        # puts i
        hold_array << nums.each if 
        # print instance_nums
        instance_nums.delete_at(instance_nums.index(i))
        # print instance_nums
        # print instance_nums
        # instance_nums = nums
        # hash_it[i] = nums.inject(:*)
        products.append(instance_nums.reject(&:nil?).inject(:*))
        instance_nums = nums
        print instance_nums
    end
    # return products
end

nums = [1,2,3,4]
nums = [-1,1,0,-3,3]
# nums = [0,0]

print product_except_self(nums)
# product_except_self(nums)