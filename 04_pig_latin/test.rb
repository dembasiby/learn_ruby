w = 'cherry'

vowels = ['a', 'e', 'i', 'u', 'o']
consonants = ('a'..'z').to_a - vowels
b = ''
if consonants.include?((w[0] && w[1]))
  b = (w[2..-1] + w[0..1]) << 'ay'
end

p consonants 
