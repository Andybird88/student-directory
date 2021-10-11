

students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]

def print_header
#First print a list of villans to screen.
puts "The students of Villans Academy"
puts "------------"
end

def print(names)
  names.each{|stud|
    puts stud    
  }
end

def print_footer(names)
#Finally we print the total
puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
