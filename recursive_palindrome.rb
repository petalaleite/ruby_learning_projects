def palindrome(word)
  raise Exception, 'Invalid input' if word.match?(/[a-za-z]/) == false
  return true if word.length <= 1
  return false if word[0] != word[-1]
  palindrome(word[1, word.length - 2])
end

puts 'Palindrome'
print 'Type word: '
word = gets.chomp
puts "Is Palindrome? #{palindrome(word)}"
