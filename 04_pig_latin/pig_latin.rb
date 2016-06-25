def translate(word)
  vowels = ['a', 'i', 'u', 'o', 'e']
  consonants = ('a'..'z').to_a - vowels
  result = []

  word.split(' ').each do |w|
    if vowels.include?(w[0])
      result << w + 'ay'
   # elsif consonants.include?(w[0])
      #result << (w[1..-1] + w[0] + 'ay')
    elsif consonants.include?(w[0]) &&
          consonants.include?(w[1]) &&
          consonants.include?(w[2])
      result << (w[3..-1] + w[0..2] + 'ay')
    elsif consonants.include?(w[0]) &&
          consonants.include?(w[1])
      result << (w[2..-1] + w[0..1] + 'ay')
    elsif consonants.include?(w[0])
      result << (w[1..-1] + w[0] + 'ay')
    end
  end
  result.join(' ')
end
