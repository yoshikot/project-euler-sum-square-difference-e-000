# Implement your object-oriented solution here!
class SumSquareDifference

  def initialize(input)
    @input = input
  end

  def difference
    square_sum - sum_squares
  end

  def sum_squares
    squared_array = []
    input_array.each {|item| squared_array << item ** 2}
    squared_array.inject(:+)
  end

  def square_sum
    input_array.inject(:+) ** 2
  end

  def input_array
    input_array = Array.new(@input,1)
    i = 1
    while i < @input
      input_array[i] = input_array[i - 1] + 1
      i += 1
    end
    input_array
  end

end

# SumSquareDifference.new(5).difference
