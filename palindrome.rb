def is_palindrome(s)
    s = s.downcase
    s = s.gsub(/[^0-9a-z]/i, '')
    arr = s.split('')
    #access first and last at the same time
    count = arr.count
    puts "The count is " + count.to_s
    mid_point = 0

    # for i in 0..count do
    #     puts "The number is " + i.to_s
    #     inverse_num = 0 - i
    #     puts "The inverse is " + inverse_num.to_s
    #     puts "The beginning of the array is " + arr[i]
    #     if arr[i] != arr[inverse_num]
    #         return false
    #     end
    # end
    count.times do 
        if arr.count > 0
            if arr.first != arr.last
                return false
            else
                arr.shift() 
                if arr.count > 0
                    arr.pop() 
                end
            end
         end
    end
    return true
end

s = "A man, a plan, a canal: Panama"
puts is_palindrome(s)