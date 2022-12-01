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