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
  answer = 0;
  length = arr.length();
  if(length == 0)
    answer = 0;
  elsif(length == 1)
    answer = arr[0];
  else
    arr.sort;
    answer = arr[length-1] + arr[length-2];
  end
  return answer;
  # YOUR CODE HERE
end

def sum_to_n? (arr, n)
  if(arr.empty? && n.zero?)
    return true;
  else
    return arr.combination(2).any?{|a,b| a+b == b}
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
  end
  s = s.downcase!;
  l = s[0];
  if(l == 'a' || l == 'e' || l=='i'||l=='o'||l=='u' )
    return false;
  else
    return true;
  end
  # YOUR CODE HERE
end

def binary_multiple_of_4? (s)
  return true if s == 0;
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

  def price_as_string
    return "$" + '%.2f' % @price;
  end
# YOUR CODE HERE
end
