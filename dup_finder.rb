# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    tried_nums = []
    nums.each do |num|
        if tried_nums.include?(num) 
            return false
        else
            tried_nums << num 
        end
    end
end