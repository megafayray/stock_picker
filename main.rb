def stock_picker(dates)
  buy_day = nil
  sell_day = nil
  profit = 0
  x = 0
  y = x + 1

  until x == dates.length-1 && y == dates.length
    dates_one = dates[x]
    dates_two = dates[y]
    #puts "Buying: #{dates_one}; Selling: #{dates_two}"
    #puts dates_two - dates_one
    if dates_two - dates_one > profit 
      profit = dates_two - dates_one
      buy_day = dates_one
      sell_day = dates_two
    end
    y += 1

    if y == dates.length
      x += 1
      unless x == dates.length-1
        y = x + 1 
      end
    end
  end

  puts "BEST: Buy day price: #{buy_day}; Sell day price: #{sell_day}; Profit: #{profit}"
  puts [dates.index(buy_day), dates.index(sell_day)]
end

stock_picker([17,3,6,9,15,8,6,1,10])