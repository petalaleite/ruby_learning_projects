print 'Name: '
name = gets.chomp
print 'Last name: '
last_name = gets.chomp
print 'Company: '
company = gets.chomp

email = ''
email << name.downcase.split.join('.')
email << '.'
email << last_name.downcase
email << '@'
email << company.downcase.split.join
email << '.com'
p "Your generated email is: #{email}"