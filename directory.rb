def input_students

  #ask for input
  puts "Please enter the name of the student"
  puts "To finish just hit return twice"

  # create an empty array
  students = []

  #gets the first name
  name = gets.chomp

  #do this if not empty
  while !name.empty? do
    #add the student to the array
    students << {:name => name, :cohort => :february}
    puts "Now we have #{students.length} students"

    #get another name
    name = gets.chomp
  end

  # return the array of students
  
end


#then we print the list

def print_header 
  puts "The students of my cohort at Makers Academy"
  puts "-------------------------------------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.length} great students"
end

students = input_students
print_header
print(students)
print_footer(students)