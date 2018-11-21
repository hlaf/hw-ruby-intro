# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce 0, :+
end

def max_2_sum arr
  arr.sort.reverse[0..1].reduce 0, :+
end

def sum_to_n? arr, n
  return false if arr.size == 0 || arr.size == 1
  arr.each do |x|
    arr2 = arr.dup
    arr2.delete_at(arr2.index(x))
    arr2.each do |y|
      return true if x + y == n
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  (('a'..'z').to_a - ['a', 'e', 'i', 'o', 'u']).include? (s[0] or '').downcase
end

def binary_multiple_of_4? s
  begin
    n = Integer(s, 2)
  rescue ArgumentError
    return false
  end
  n % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn == ''
    @isbn = isbn

    raise ArgumentError if price <= 0
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end

end
