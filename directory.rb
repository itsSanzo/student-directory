def input_students
  puts "Please enter the names of the students, one at a time"
  puts "(To finish, just hit return twice)"
  
  students = []
  name = gets.chomp

  while !name.empty? do
    puts "Student's age?"
    age = gets.chomp

    puts "Student's country of origin?"
    country = gets.chomp 

    students << {:name => name, :cohort => :february, :age => age, :country => country}

    puts "Now we have #{students.length} students."
    puts "Add another student!"
    name = gets.chomp
  end

  students
end

def print_header
  puts "List of all the awesome students at MA"
  puts "--------------------------------------"
end

def print(students)
  students.each do |student|
      puts "#{student[:name].center(20)}, #{student[:age].center(2)} yo, from #{student[:country].center(10)} (#{student[:cohort]} cohort)"
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