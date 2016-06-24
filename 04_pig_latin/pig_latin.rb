def translate(word)
  vowels = ['a', 'e', 'i', 'u', 'o', 'e']
  consonants = ('a'..'z').to_a - vowels
  splitted = word.split(' ').map do |w|
    if vowels.include?(w[0])
      w << 'ay'
    elsif consonants.include?(w[0])
      (w[1..-1] + w[0]) << 'ay'
    end
  end
  splitted.join(' ')
end
