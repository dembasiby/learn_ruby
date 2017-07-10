def reverser
  x = yield
  x.split(" ").map { |str| str.reverse }.join(" ")
end

def adder(x=1)
  y = yield
  x + y
end

def repeater(x=1)
  x.times { yield }
end
