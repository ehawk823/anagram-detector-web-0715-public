# Your code goes here!
class Anagram
  
  attr_accessor :word

  def initialize (word)
    @word = word
  end

  def match (array)
    final_array = []
    scrambled_letters = @word.split("")
    ana_letters = scrambled_letters.sort
    array.each do |item|
      garbled_letters = item.split("")
      option_letters = garbled_letters.sort
      if ana_letters == option_letters
        final_array << item
      end
    end
    return final_array
  end
end

