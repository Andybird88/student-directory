

students = [
    {name: "Dr. Hannibal Lecter", cohort: :november},
    {name: "Darth Vader", cohort: :november},
    {name: "Nurse Ratched", cohort: :november},
    {name: "Michael Corleone", cohort: :november},
    {name: "Alex DeLarge", cohort: :november},
    {name: "The Wicked Witch of the West", cohort: :november},
    {name: "Terminator", cohort: :november},
    {name: "Freddy Krueger", cohort: :november},
    {name: "The Joker", cohort: :november},
    {name: "Joffrey Baratheon", cohort: :november},
    {name: "Norman Bates", cohort: :november}
]

def print_header
#First print a list of villans to screen.
puts "The students of Villans Academy"
puts "------------"
end

def print(names)
  names.each{|stud|
    puts "#{stud[:name]} (#{:cohort} cohort)"    
  }
end

def print_footer(names)
#Finally we print the total
puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
