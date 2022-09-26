def max_profit(prices)
    # for everything in the prices array
    high = nil
    low = nil
    high_location = nil
    low_location = nil
    prices.each_with_index do |price, index|

        # set the first one as the high and the low
        if index == 0
            high = prices[index] 
            low = prices[prices.length - 1]
            high_location = index
            low_location = index
            puts "low_location is " + low_location.to_s
        end
      
        if price > high
            if index > high_location
                high = price
            end
        elsif price < low

            if index < low_location
                low = price
                low_location = index
            end
        end

    end
    return high - low
end
    
prices = [7,1,5,3,6,4]
print  max_profit(prices)