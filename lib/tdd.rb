def my_uniq(arr)

  hash = Hash.new(0)

  arr.each {|ele| hash[ele]+= 1}

  hash.keys

end

class Array

  def two_sum

    new_arr = []

    self.each.with_index {|el1, i| 
      self.each.with_index {|el2, j| 
      
      new_arr << [i,j]  if j > i && el1 + el2 == 0
      }
    }

    new_arr
  end

end

def my_transpose(arr)

  new_arr = Array.new(arr.length) {Array.new(arr.length)}

  arr.each.with_index {|row, i|
    row.each.with_index {|val, j|

      new_arr[j][i] = val
  
    }

  }

  new_arr

end

# [3,6,7,4,5]

def stock_picker(arr)

  # differences = []

  # arr.each.with_index {|price, day|
  #   arr[day..-1].each.with_index {|new_price, new_day|

  #     if new_day > day
  #     differences << [day, new_day, new_price-price]
  #     end
  #   }

  # }

  # profits = differences.map {|sub_arr| sub_arr[2]}
  # max_profit = profits.max
  # return [[]] if max_profit < 0

  # max_profitss = differences.map {|sub_arr|

  #   if sub_arr[2] == max_profit
  #     [sub_arr[0], sub_arr[1]]
  #   end

  # }

  # max_profitss.select {|ele| !ele.nil?}


  hash = Hash.new {|h, k| h[k] = []}

  arr.each.with_index do |price, day|
    arr.each.with_index do |new_price, new_day|
      if new_day > day
        profit = new_price - price 
        hash[profit] << [day, new_day]
      end
    end
  end

  sorted = hash.sort_by { |k, v| k }
  largest_profit = sorted[-1][0]
  if largest_profit < 0 
    return [[]]
  else
    ssorted = sorted.select { |subArray| subArray[0] == largest_profit }
    sssorted = ssorted.map {|arr| arr[1]}
    return sssorted[0]
  end
end


class TowersofHanoi 

  attr_reader :stack1, :stack2, :stack3

  def initialize
    @stack1 = Array.new()
    @stack2 = []
    @stack3 = []
  end



end