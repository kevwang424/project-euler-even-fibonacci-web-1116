# Implement your object-oriented solution here!
class EvenFibonacci

  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def sum
    fib = [1,2]
    x = 1
    y = 2
    while fib[-1] < @num && (x + y) < @num
      fib << x + y
      x = fib[-2]
      y = fib[-1]
    end

    sum = 0
    fib.each do |i|
      sum += i if i.even?
    end
    sum
  end

end
