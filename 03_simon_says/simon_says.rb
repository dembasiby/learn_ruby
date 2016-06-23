def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, x=2)
  a = (str + ' ') * x
  a.split(' ').join(' ')
end

def start_of_word(word, x)
  word[x-1]
end
