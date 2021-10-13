@students = [] #An empty array accesible by all methods

def print_header
  #First print a list of villans to screen.
  puts "The students of Villans Academy".center(50)
  puts "------------".center(50)
end

def print_student_list
  
  length = @students.length
  index = 0
  if @students == []
    puts "No students are cuurentlyy enrolled in the academy"
  else
  while true
    puts "#{index+1}. #{@students[index][:name]} (#{@students[index][:cohort]} cohort) Hobbies: #{@students[index][:hobbies]}, Place of Birth: #{@students[index][:placeOfBirth]}, Height: #{@students[index][:height]} cm"
    index += 1 
    length -= 1
    if length == 0
      break
    end
  end
  end
end

def printBeginWithLetter(letter)
  puts ""
  puts "Students begining with #{letter}:"
  @students.each_with_index { |stud, index|
    if "#{stud[:name]}"[0] == letter
    puts "#{index+1}. #{stud[:name]} (#{stud[:cohort]} cohort)"
    end
  }
end

def nameShorterThan(short)
  puts ""
  puts "Students with a name shorter than #{short} characters:"
  @students.each_with_index { |stud, index|
    if "#{stud[:name]}".length < 12
    puts "#{index+1}. #{stud[:name]} (#{stud[:cohort]} cohort)"
    end
  }

end  


def print_footer
  #Finally we print the total
  puts ""
  if @students.count == 1
    puts "Overall, we have #{@students.count} great student"
  else
    puts "Overall, we have #{@students.count} great students"
  end
  puts ""
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish hit return thrice"
  
  name = gets
  name = name[0,name.length-1]
  
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
    
    @students << {name: name, cohort: cohort, hobbies: hobbies, height: height, placeOfBirth: pob }
  
    if @students.count == 1
    puts "We have #{@students.count} student."
    else
    puts "We have #{@students.count} students"
    end
    name = gets.chomp
    
  end
end


def printbycohort(names, month)
  names.each_with_index {|stud, index|
    if stud[:cohort] == month.to_sym
      puts "#{index+1}. #{names[index][:name]} (#{names[index][:cohort]} cohort) Hobbies: #{names[index][:hobbies]}, Place of Birth: #{names[index][:placeOfBirth]}, Height: #{names[index][:height]}cm"
    end
  }
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selction)
  case selction
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit
    else
      puts "I don't understand that action, try again"
  end
end


def save_students
  file = File.open("students.csv", "w")
  
  @students.each {|student|
    student_data = [student[:name], student[:cohort], student [:hobbies], student[:placeOfBirth], student[:height]]
    csv_line = student_data.join(",")
    file.puts csv_line
  }
  file.close
end

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each{|line|
    name, cohort, hobbies, placeOfBirth, height = line.chomp.split(",")
    @students << {name: name, cohort: cohort.to_sym, hobbies: hobbies, placeOfBirth: placeOfBirth, height: height}
  }
  file.close
end

interactive_menu