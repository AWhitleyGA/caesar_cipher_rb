require 'pry'


def encode word
  alphabet = ('a'..'z').to_a
  letters = word.split('')
  translatedArray = letters.map do |letter|
    alphabet.index(letter) + 13 > 25? alphabet.index(letter) - 13 : alphabet.index(letter) + 13
  end
  translatedWord = translatedArray.map { |position| alphabet[position]}
  return translatedWord.join
end


# word = gets.chomp
# puts encode word

binding.pry
