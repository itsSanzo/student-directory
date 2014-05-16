def input_students
  puts "Please enter the names of the students, one at a time"
  puts "(To finish, just hit return twice)"
  
  students = []
  name = gets.chomp

  while !name.empty? do
    students << {:name => name, :cohort => :february}
    puts "Now we have #{students.length} students."
    name = gets.chomp
  end

  students
end

def print_header
  puts "List of all the awesome students at MA"
  puts "--------------------------------------"
end

def print(students)
  i = 0
  while i < students.length do
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort)"
    i += 1
  end
end

def print_footer(students)
  puts "--------------------------------------"
  puts "Overall, we have #{students.length} great students!"
end

students = input_students

print_header
print(students)
print_footer(students)