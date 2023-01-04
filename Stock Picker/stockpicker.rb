def stock_picker(prices)
    max_profit = 0
    best_sell_day = 0
    best_buy_day = 0
    best_sell_stock = 0
    best_buy_stock = 0

    prices.each_with_index do |buy_stock, buy_day|
        prices.each_with_index do |sell_stock, sell_day|
                profit = buy_stock - sell_stock
            if (profit > max_profit) && (c=buy_day - sell_day > 0)
                max_profit = profit
                best_sell_day = sell_day
                best_buy_day = buy_day
                best_sell_stock = sell_stock
                best_buy_stock = buy_stock
            end
            
        end
    end
    p [best_sell_day, best_buy_day]
    p [best_sell_stock, best_buy_stock, max_profit]
end

stock_picker([17,3,6,9,15,8,6,1,10])
