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

  if students.length > 1 
    puts "Overall, we have #{students.length} great students!"
  else
    puts "We only have 1 student!"
  end

end

def interactive_menu
  students = []

  loop do
    puts "Hi, welcome to the student directory!"
    puts "Choose a number from the menu:"
    
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"

    selection = gets.chomp

    case selection
    when "1"
      students = input_students
    when "2"
      if students.length > 0
        print_header
        print(students)
        print_footer(students)  
      else
        puts "The students' list is empty :("
      end
    when "9"
      exit
    else
      puts "I don't know what you mean, please try again."
    end

  end
end

interactive_menu