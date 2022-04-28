def is_palindrome(s)
    s = s.downcase
    s = s.gsub(/[^0-9a-z]/i, '')
    arr = s.split('')
    count = arr.count
    for i in 0..count do
        inverse_num = 0 -1 - i
        if arr[i] != arr[inverse_num]
            return false
        end
    end
    return true
end

s = "A man, a plan, a canal: Panama"
puts is_palindrome(s)