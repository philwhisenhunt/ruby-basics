def is_palindrome(s)
    s = s.downcase
    s = s.gsub(/[^0-9a-z]/i, '')
    arr = s.split('')
    #access first and last at the same time
    count = arr.count
    puts "The count is " + count.to_s
    mid_point = 0

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