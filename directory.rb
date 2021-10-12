
def print_header
#First print a list of villans to screen.
puts "The students of Villans Academy"
puts "------------"
end

def print(names)
  length = names.count
  index = 0
  
  while true
    puts "#{index+1}. #{names[index][:name]} (#{names[index][:cohort]} cohort)"
    index += 1 
    length -= 1
    if length == 0
      break
    end
  
  end
end

def printBeginWithLetter(names,letter)
  puts ""
  puts "Students begining with #{letter}:"
  names.each_with_index { |stud, index|
    if "#{stud[:name]}"[0] == letter
    puts "#{index+1}. #{stud[:name]} (#{stud[:cohort]} cohort)"
    end
  }
end

def nameShorterThan(names,short)
  puts ""
  puts "Students with a name shorter than #{short} characters:"
  names.each_with_index { |stud, index|
    if "#{stud[:name]}".length < 12
    puts "#{index+1}. #{stud[:name]} (#{stud[:cohort]} cohort)"
    end
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
  
    puts "We have #{students.count} students."
    name = gets.chomp
  end
  
  students
  
end

students = input_students
print_header
print(students)
print_footer(students)
printBeginWithLetter(students,"D")
nameShorterThan(students,12)






