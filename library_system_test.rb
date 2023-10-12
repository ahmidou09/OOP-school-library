require_relative 'student'
require_relative 'classroom'
require_relative 'person'
require_relative 'rental'
require_relative 'book'

# Create some people
person1 = Person.new(25, 'Mike')
person2 = Person.new(30, 'Jonas')

# Create some books
book1 = Book.new('Book 1', 'Author 1')
book2 = Book.new('Book 2', 'Author 2')

# Create some rentals
Rental.new(book1, '2023-10-11', person1)
Rental.new(book2, '2023-10-13', person2)

# Add rentals to people
person1.add_rental(book1, '2023-10-14')
person2.add_rental(book2, '2023-10-15')

# Access rentals for a person
puts "Rentals for #{person1.name}:"
person1.rentals.each do |rental|
  puts "#{rental.book.title} (Date: #{rental.date})"
end

# Create two classrooms
classroom1 = Classroom.new('Class 1')
classroom2 = Classroom.new('Class 2')

# Create two students and add them to classrooms
student1 = Student.new(classroom1, 16, 'Mike', parent_permission: true)
student2 = Student.new(classroom2, 17, 'Jonas', parent_permission: true)

# Verify that students belong to the correct classrooms
puts "#{student1.name} #{student1.age} belongs to #{student1.classroom.label}" 
# Should display "Mike 16 belongs to Class 1"
puts "#{student2.name} #{student2.age} belongs to #{student2.classroom.label}" 
# Should display "Jonas 17 belongs to Class 2"

# Add students to classrooms
classroom1.add_student(student1)
classroom2.add_student(student2)

# Verify that students are now in the correct classrooms after manual addition
puts "#{student1.name} #{student1.age} belongs to #{student1.classroom.label}" 
# Should display "Mike 16 belongs to Class 2"
puts "#{student2.name} #{student2.age} belongs to #{student2.classroom.label}"

# Display the names of students in each class
puts "Students in #{classroom1.label}:"
classroom1.students.each do |student|
  puts student.name
end

puts "\nStudents in #{classroom2.label}:"
classroom2.students.each do |student|
  puts student.name
end
