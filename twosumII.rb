# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    count = numbers.count - 1
    for i in 0..count do 
    plus1 = i + 1
        for j in plus1..count do
            if numbers[i] + numbers[j] == target
                return [i+1,j+1]
            end
        end
    end
end

# numbers = [2,7,11,15]
# target = 9

numbers = [5,25,75]
target = 100

print two_sum(numbers, target)
