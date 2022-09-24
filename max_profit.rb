def max_profit(prices)
    # for everything in the prices array
    high = nil
    low = nil
    prices.each_with_index do [price, index]

    # set the first one as the high and the low
    if index == 0
        high = prices[index] 
        low = prices[prices.length - 1]
    end

    # for each one after, check if it is higher or lower
    
    # if lower, change lowest
    # if higher, change highest
    end
end
    
prices = [7,1,5,3,6,4]