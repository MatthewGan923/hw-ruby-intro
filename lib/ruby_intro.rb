# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  answer = 0;
  arr.each do |item|
    answer+= item;
  end
  return answer;
  # YOUR CODE HERE
end

def max_2_sum (arr)
  if(arr.empty?)
    return 0;
  elsif (arr.size == 1)
    return arr[0];
  end
  max = -1000000;
  index = 0;
  max2 = max;
  (0..arr.size - 1).each { |i|
    if (arr[i] > max)
      max = arr[i];
      index = i;
    end
  }
  (0..arr.size - 1).each { |i|
    if (arr[i] > max2&&i!=index)
      max2 = arr[i];
    end
  }
  answer = max + max2;
  return answer;
  # YOUR CODE HERE
end

def sum_to_n? (arr, n)
  if(arr.empty? && n.zero?)
    return false;
  else
    return arr.combination(2).any?{|a,b| a+b == n}
  end
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  answer = "Hello, " + name;
  return answer;
  # YOUR CODE HERE
end

def starts_with_consonant? (s)
  if(s.empty?)
    return false;
  elsif s.match?(/^[[:alpha:][:blank:]]+$/) == false
    return false;
  end
  l = s[0];
  if(l == 'a' || l == 'e' || l=='i'||l=='o'||l=='u' ||l == 'A' || l == 'E' || l=='I'||l=='O'||l=='U' )
    return false;
  else
    return true;
  end
  # YOUR CODE HERE
end

def binary_multiple_of_4? (s)
  return true if s == 0;
  return false if s.empty?;
  if(s.count('01') == s.size)
    return true if s.to_i(2) %4 == 0;
  end
  return false;
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def initialize(isbn_var, price_var)
    if(isbn_var.empty?||(price_var.is_a?(Numeric)) == false )
      raise ArgumentError, "Invalid Argument";
    elsif(price_var<=0)
      raise ArgumentError, "Invalid price";
    end
    @isbn = isbn_var;
    @price = price_var;
  end
  def isbn
    return @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
  def price
    return @price
  end
  def price_as_string
    return "$" + '%.2f' % @price;
  end
# YOUR CODE HERE
end
