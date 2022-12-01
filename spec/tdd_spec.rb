require 'tdd'

describe "#my_uniq" do
  subject(:array) {[1,2,1,3,3]}

  it 'returns an array with unique elements' do
    expect(my_uniq(array)).to eq([1,2,3])
  end

  
  it 'returns a new array' do
    expect(my_uniq(array)).to_not be(array)
  end
  

end


describe "Array" do 

  describe "#two_sum" do

    subject(:array) {[-1,0,2,-2,1]}

    it 'handles empty array' do
      expect([].two_sum).to eq([])
    end

    it 'returns elements in increasing order index-wise' do

      expect(array.two_sum).to eq([[0,4], [2,3]])
      expect([-1,-1,1].two_sum).to eq([[0,2], [1,2]])

    end

  end
end

describe "my_transpose" do

  it 'does not mutate original array' do

    expect(my_transpose([[0, 1, 2], [3, 4, 5],[6, 7, 8]])).to_not be([[0,3,6], [1,4,7], [2,5,8]])

  end

  it 'returns a transposed version of input' do

    expect(my_transpose([[0, 1, 2], [3, 4, 5],[6, 7, 8]])).to eq([[0,3,6], [1,4,7], [2,5,8]])

  end

end

describe "#stock_picker" do

  it 'returns the days that give the max profit' do
    expect(stock_picker([3,6,7,4,5])).to eq([[0,2]])
    expect(stock_picker([1,1,1])).to eq([[0,1], [0,2], [1,2]]) 
  end

  it 'Handles no profits' do
    expect(stock_picker([6,5,4,3,2,1])).to eq([[]])
  end



end