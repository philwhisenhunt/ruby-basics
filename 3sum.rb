def three_sum(nums)
 
res = []
nums.sort()
nums.each_with_index do |num, index|
    if num > 0 && num == nums[index - 1]
        next
    end
        l = index + 1
        r = nums.length - 1

        while l < r

            print "l is " 
            puts l

            print "r is " 
            puts r
            print "Num is: "
            puts num

            print "Num[l] is: "
            puts num[l]

            
            print "Num[r] is: "
            puts num[r]


            threeSum = num + nums[l] + nums[r]
            puts threeSum

            if threeSum > 0
                r -= 1
            elsif threeSum < 0
                l += 1
            else
                puts "yes"
                res << [num, nums[l], nums[r]]
                l += 1
                while nums[l] == nums[l - 1] && l < r
                    l+= 1
                end
            end

        end
   
    # puts num
end
return res
end

nums = [-1,0,1,2,-1,-4]
print three_sum(nums)