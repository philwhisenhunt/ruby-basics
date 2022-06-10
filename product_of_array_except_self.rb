def product_except_self(nums)
    results = [1] * nums.length
    prefix = 1

    nums.each_with_index do |el, i|
        results[i] = prefix
        prefix *=  nums[i] 
    end
    print results
    postfix = 1
    nums.each_with_index.reverse_each do |el, i|
        puts i 
        results[i] *= postfix
        postfix *= nums[i]
    end
return results
   
end

nums = [1,2,3,4]
# nums = [-1,1,0,-3,3]
# nums = [0,0]

print product_except_self(nums)
