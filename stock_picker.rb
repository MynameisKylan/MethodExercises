def stock_picker(prices)
    best = []
    prices.each.with_index do |buy_price, i|
        unless i == prices.size - 1
            buy = i
            p 'buy = ' + buy.to_s
            prices[(i+1)..-1].each.with_index do |sell_price, j|
                sell = i + j + 1
                p 'sell = ' + sell.to_s
                if best.empty? 
                    best = [buy, sell]
                else
                    p best
                    best = (calculate_profit(prices, buy, sell) > calculate_profit(prices, best[0], best[1])) ? [buy, sell] : best
                end
            end
        end
    end
    best
end

def calculate_profit(prices, buy_day, sell_day)
    prices[sell_day] - prices[buy_day]
end