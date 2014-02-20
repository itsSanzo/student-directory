# we make a list of the students
students = [
  "Mario Gintili",
  "Mikhail Dubov",
  "Karolis Noreika",
  "Michael Sidon",
  "Charles De Barros",
  "Ruslan Vikhor",
  "Toby Retallick",
  "Mark Mekhaiel",
  "Sarah Young",
  "Hannah Wight",
  "Khushkaran Singh",
  "Rick brunstedt",
  "Manjit Singh",
  "Alex Gaudiosi",
  "Ross Hepburn",
  "Natascia Marchese",
  "Tiffanie Chia",
  "Matthew Thomas",
  "Freddy McGroarty",
  "Tyler Rollins",
  "Richard Curteis",
  "Anna Yanova",
  "Andrew Cumine"
]

#then we print the list
puts "The students of my cohort at Makers Academy"
puts "-------------------------------------------"

students.each do |student|
	puts student
end

# then we count them
puts "Overall, we have #{students.length} great students"
