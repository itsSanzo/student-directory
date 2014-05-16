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

def print_header
  puts "List of all the awesome students at MA"
  puts "--------------------------------------"
end

def print(students)
  students.each do |student|
    puts student
  end
end

def print_footer(students)
  puts "--------------------------------------"
  puts "Overall, we have #{students.length} great students!"
end

print_header
print(students)
print_footer(students)