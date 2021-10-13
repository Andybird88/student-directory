
def print_header
  #First print a list of villans to screen.
  puts "The students of Villans Academy".center(50)
  puts "------------".center(50)
end

def print(names)
  
  length = names.length
  index = 0
  if names == []
    puts "No students are cuurentlyy enrolled in the academy"
  else
  while true
    puts "#{index+1}. #{names[index][:name]} (#{names[index][:cohort]} cohort) Hobbies: #{names[index][:hobbies]}, Place of Birth: #{names[index][:placeOfBirth]}, Height: #{names[index][:height]} cm"
    index += 1 
    length -= 1
    if length == 0
      break
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
  end
end


def print_footer(names)
  #Finally we print the total
  if names.count == 1
    puts "Overall, we have #{names.count} great student"
  else
    puts "Overall, we have #{names.count} great students"
  end
end

def input_students
  
  puts "Please enter the names of the students"
  puts "To finish hit return thrice"
  
  name = gets
  name = name[0,name.length-1]
  students = []
  
  while !name.empty? do
  
    puts "Enter the starting month of the students cohort"
    cohort = gets.chomp.to_s
  

  
    while true
     
      if cohort == ""
        cohort = "november"
      end
      
      if cohort != "january" && cohort != "february" && cohort != "march" && cohort != "april" && cohort != "may" && cohort != "june" && cohort != "july" && cohort != "august" && cohort != "september" && cohort != "october" && cohort != "november" && cohort != "december"
        puts "please enter a valid month"
         cohort = gets.chomp
      else
        cohort = cohort.to_sym
        puts "Please enter a hobbie for the current student"
        hobbies = gets.chomp
        if hobbies == ""
          hobbies = "n/a"
        end
        puts "Please enter the height of the student"
        height = gets.chomp
        if height == ""
          height = "n/a"
        end
        puts "Please enter the birth place of the student"
        pob = gets.chomp
        if pob == ""
          pob = "n/a"
        end
        
        break
      end
    end
    
    students << {name: name, cohort: cohort, hobbies: hobbies, height: height, placeOfBirth: pob }
  
    if students.count == 1
    puts "We have #{students.count} student."
    else
    puts "We have #{students.count} students"
    end
    name = gets.chomp
    
  
  end
  students
end


def printbycohort(names, month)
  names.each_with_index {|stud, index|
    if stud[:cohort] == month.to_sym
      puts "#{index+1}. #{names[index][:name]} (#{names[index][:cohort]} cohort) Hobbies: #{names[index][:hobbies]}, Place of Birth: #{names[index][:placeOfBirth]}, Height: #{names[index][:height]}cm"
    end
  }
end

def interactive_menu
  students = []
  
  loop do
  #Print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" #9 as will add more items
  
  #Read the input and save it into a variable
    selection = gets.chomp
  #Do what the user has asked
    case selection
      when "1"
        students = input_students #input the students
      when "2"
        print_header
        print(students)
        print_footer(students) #Show the students
      when "9"
        exit #This will terminate the program
      else
        puts "I don't know what you mean, try again"
    end
  
  end
end

interactive_menu