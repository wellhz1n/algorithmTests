
class AnagramChecker
  @word_one
  @word_two

  def initialize (word_one, word_two)
     @word_one = word_one.delete(' ')
     @word_two = word_two.delete(' ')
  end
  def is_anagram
    word_one_char_arr = @word_one.chars
    word_two_char_arr = @word_two.chars
    result = true
    i = 0
    while  i <= word_one_char_arr.count  do
      letter = word_one_char_arr[i]
      number_of_letters_on_main_word = word_one_char_arr.select{|item| item==letter }.count
      if word_two_char_arr.select{|item| item == letter }.count != number_of_letters_on_main_word
        result = false
      end
      i += 1
    end
    result
  end
end
def get_word_value(question)
  puts "#{question}"
   gets.chomp
end

word1 = get_word_value("Digite a primeira palavra:")
word2 = get_word_value("Digite a segunda palavra:")

puts AnagramChecker.new(word1,word2).is_anagram

