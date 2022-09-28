def max_profit(prices)
    # for everything in the prices array
    max_profit = 0
    # profit = 0
    l = 0
    r = 1

    puts prices.length
    while r < (prices.length) do
        
        if prices[l] < prices[r]
            profit = prices[r] - prices[l]
            max_profit = [max_profit, profit].max()
        else
            l = r
            r += 1
        end
       
    end
    return max_profit
end
    
prices = [7,1,5,3,6,4]
print  max_profit(prices)