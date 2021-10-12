def print_header
#First print a list of villans to screen.
puts "The students of Villans Academy"
puts "------------"
end

def print(names)
  names.each_with_index { |stud, index|
    puts "#{index+1}. #{stud[:name]} (#{stud[:cohort]} cohort)"    
  }
end

def print_footer(names)
  #Finally we print the total
  puts "Overall, we have #{names.count} great students"
end

def input_students
  
  puts "Please enter the names of the students"
  puts "To finish hit return twice"
  
  name = gets.chomp
  students = []
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students."
    name = gets.chomp
  end
  
  students
  
end

students = input_students
print_header
print(students)
print_footer(students)







