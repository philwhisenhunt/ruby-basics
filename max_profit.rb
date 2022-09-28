def max_profit(prices)
    # for everything in the prices array
    max_profit = 0
    # profit = 0
    l = 0
    r = 1

    puts prices.length
    while r < (prices.length) do
        puts "r is " + r.to_s
        puts "l is " + l.to_s
        if prices[l] < prices[r]
            profit = prices[r] - prices[l]
            max_profit = [max_profit, profit].max()
            puts "here"
        else
            l = r
           
        end
        r += 1
       
    end
    return max_profit
end
    
prices = [7,1,5,3,6,4]
print  max_profit(prices)