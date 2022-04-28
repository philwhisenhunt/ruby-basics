# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    minus_one_count = numbers.count - 1
    sum = nil;
    first = 0
    last  = minus_one_count
    while (first < last) do        
        sum = numbers[first] + numbers[last]

        if sum == target
            break
        end
        
        if sum > target
            last -= 1
        else
            first += 1
        end
    end
    return [first + 1, last + 1]
    
end



numbers = [5,25,75]
target = 100

print two_sum(numbers, target)
