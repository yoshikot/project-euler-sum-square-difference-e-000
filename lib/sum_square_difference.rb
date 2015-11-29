# Implement your procedural solution here!
def sum_square_difference(input)
  square_sum(input) - sum_squares(input)
end

def sum_squares(input)
  squared_array = []
  input_array(input).each {|item| squared_array << item ** 2}
  squared_array.inject(:+)
end

def square_sum(input)
  input_array(input).inject(:+) ** 2
end

def input_array(input)
  input_array = Array.new(input,1)
  i = 1
  while i < input
    input_array[i] = input_array[i - 1] + 1
    i += 1
  end
  input_array
end

# print sum_square_difference(10)