def stock_picker(days_array)
    best_pair = []
    best_pair_profit = 0
    no_of_days = days_array.length - 1
  
    days_array.each_with_index { |buy_price, buy_index|
      (0..no_of_days).each { |sell_index|
        next if (buy_index >= sell_index)
  
        if (days_array[sell_index] - buy_price) > best_pair_profit
          best_pair = [buy_index, sell_index]
          best_pair_profit = days_array[sell_index] - buy_price
        end
      }
    }
    best_pair
  end
  
  p stock_picker([17,3,6,9,15,8,6,1,10])