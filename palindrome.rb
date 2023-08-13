def palindrome(word)
  word == word.reverse
end

puts 'Palindrome Words'
print 'Type word: '
word = gets.chomp
puts "Is palindrome? #{palindrome(word)}"