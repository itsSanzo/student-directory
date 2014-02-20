# we make a list of the students
students = [
  ["Mario Gintili", :february],
  ["Mikhail Dubov", :february],
  ["Karolis Noreika", :february],
  ["Michael Sidon", :february],
  ["Charles De Barro,", :february],
  ["Ruslan Vikhor", :february],
  ["Toby Retallick", :february],
  ["Mark Mekhaiel", :february],
  ["Sarah Young", :february],
  ["Hannah Wight", :february],
  ["Khushkaran Singh", :february],
  ["Rick brunstedt", :february],
  ["Manjit Singh", :february],
  ["Alex Gaudiosi", :february],
  ["Ross Hepburn", :february],
  ["Natascia Marches,", :february],
  ["Tiffanie Chia", :february],
  ["Matthew Thomas", :february],
  ["Freddy McGroarty", :february],
  ["Tyler Rollins", :february],
  ["Richard Curteis", :february],
  ["Anna Yanova", :february],
  ["Andrew Cumine", :february],
]

#then we print the list

def print_header 
  puts "The students of my cohort at Makers Academy"
  puts "-------------------------------------------"
end

def print(students)
  students.each do |student|
    puts "#{student[0]} (#{student[1]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)