def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  return 0 if arr.empty?
  arr.reduce { |acc, num| acc += num }
end

def multiply(arr)
  arr.reduce { |acc, num| acc *= num }
end

def power(num1, num2)
  num1 ** num2
end

def factorial(num)
  return 0 if num == 0

  a = num.downto(1).to_a
  a.reduce { |acc, n| acc *= n }
end

