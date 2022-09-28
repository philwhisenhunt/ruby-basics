def max_profit(prices)
    # for everything in the prices array
    max_profit = 0
    profit = nil
    l = 0
    r = 1

    while r < prices.length
        
        if prices[l] < prices[r]
            
        end
    end
    # prices.each_with_index do |price, index|
    #     if index == 0
    #         l = price
    #     end

    #     if index == 1
    #         r = price
    #         max_profit = r - l
    #     end

    #     if index >= 2
    #         profit = r - l
        

    #         if profit > max_profit
    #             max_profit = profit
    #         end
            
    #         if price > r
    #             r = price
    #         end
    #     end
   
    # end
    return max_profit
end
    
prices = [7,1,5,3,6,4]
print  max_profit(prices)