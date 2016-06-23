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

def start_of_word(word, x=0)
  word[0,x]
end

def first_word(phrase)
  phrase.split(' ').first
end

def titleize(title)
  a = title.split(' ')
  a.map(&:capitalize).join(' ')
end
