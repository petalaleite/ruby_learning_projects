print 'Enter your grade: '
grade = gets.chomp.to_i

grade_result = case grade
when 90..100 then 'Grade A'
when 80..90 then 'Grade B'
when 70..80 then 'Grade C'
when 60..70 then 'Grade D'
when 50..60 then 'Grade E'
when 0..50 then 'Grade F'
else 'Invalid input'
end

puts grade_result