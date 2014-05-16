def input_students
  puts "Please enter the names of the students, one at a time"
  puts "(To finish, just hit return twice)"
  
  @months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  students = []
  name = gets.chomp.capitalize

  while !name.empty? do
    puts "Cohort joined?"
    cohort = gets.chomp.capitalize

    while !@months.include?(cohort)
      puts "Please, don't skip the question and input a real month!"
      cohort = gets.chomp.capitalize
    end

    puts "Student's age?"
    age = gets.chomp

    while age.empty?
      age = "?"
    end

    puts "Student's country of origin?"
    country = gets.chomp.capitalize

    while country.empty?
      puts "Please, don't skip the question!"
      country = gets.chomp.capitalize
    end

    students << {:name => name, :cohort => cohort.to_sym, :age => age, :country => country}

    puts "Now we have #{students.length} students."
    puts "Add another student!"
    name = gets.chomp.capitalize
  end

  students
end

def print_header
  puts "List of all the awesome students at MA"
  puts "--------------------------------------"
end

def print(students)
  ordered_by_cohorts = []

  @months.map do |month|
    students.each do |student|
      ordered_by_cohorts << student if student[:cohort].to_s == month
    end
  end

  ordered_by_cohorts.each do |student|
    puts "#{student[:name]}, #{student[:age]} yo, from #{student[:country]} (#{student[:cohort]} cohort)"
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