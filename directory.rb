

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

#First print a list of villans to screen.
puts "The students of Villans Academy"
puts "------------"
students.each{|stud|
  puts stud    
}
#Finally we print the total
puts "Overall, we have #{students.count} great students"