class Atbash
  def self.encode(word)
    first_13_letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]
    last_13_letters =  ["z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n"]

    word.gsub!(/[^a-z0-9]/, '')

    word.split('').map do |char|
      if first_13_letters.include?(char)
        last_13_letters[first_13_letters.index(char)]
      else
        first_13_letters[last_13_letters.index(char)]
      end
    end.join('')
  end
end

p Atbash.encode('OMG')
