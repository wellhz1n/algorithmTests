
class AnagramChecker
  @wordOne
  @wordTwo
  def initialize (wordOne, wordTwo)
     @wordOne = wordOne
     @wordTwo = wordTwo
  end
  
  def IsAnagram()
    puts "#{@wordOne} - #{@wordTwo}"
    return true
  end
end

puts "Digite a primeira palavra"
word1 = gets.chomp

puts "Digite a segunda palavra"
 word2 = gets.chomp

AnagramChecker.new(word1,word2).IsAnagram()

