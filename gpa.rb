puts "How many classes do you have?"

number_of_classes = gets.to_i

puts "What are your grades (separate them with commas)?"

grades = gets.downcase

grades_array = grades.split(",")

def convert_grade_for(grade)
  case grade
  when "a"
    4.0
  when "b"
  	3.0
  when "c"
    2.0
  when "d"
    1.0
  else
    0.0
  end
end

grade_total = 0

grades_array.each do |grade|
  grade_total += convert_grade_for(grade)
end

gpa = grade_total/number_of_classes

puts "Your GPA is: " + gpa.to_s