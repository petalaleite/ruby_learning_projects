puts 'Body Mass Index (BMI) Calculator'
print 'Your height(cm): '
height = gets.chomp.to_f
print 'Your weight(kg): '
weight = gets.chomp.to_f

bmi = (weight / (height / 100)**2).round(2)

def result(bmi)
  case bmi
  when 0..16
    puts "Your BMI is: #{bmi}. Categorie: Severe Thiness"
  when 16..17
    puts "Your BMI is: #{bmi}. Categorie: Moderate Thinness"
  when 17..18.5
    puts "Your BMI is: #{bmi}. Categorie: Mild Thinness"
  when 18.5..25
    puts "Your BMI is: #{bmi}. Categorie: Normal"
  when 25..30
    puts "Your BMI is: #{bmi}. Categorie: Overweight"
  when 30..35
    puts "Your BMI is: #{bmi}. Categorie: Obese Class I"
  when 35..45
    puts "Your BMI is: #{bmi}. Categorie: Obese Class II"
  when 40..100
    puts "Your BMI is: #{bmi}. Categorie: Obese Class III"
  else
    'Invalid input'
  end
end

result(bmi)
