require 'date'
require_relative '../person/classroom'
require_relative '../person/student'
​
describe Classroom do
  let(:classroom) { Classroom.new('Room A') }
  let(:student) { Student.new(15, 'John Doe', true) }
​
  describe '#initialize' do
    it 'creates a new classroom with a label' do
      expect(classroom.label).to eq('Room A')
    end
​
    it 'initializes students as an empty array' do
      expect(classroom.students).to be_an(Array)
      expect(classroom.students).to be_empty
    end
  end
​
  describe '#add_student' do
    it 'adds a student to the classroom' do
      classroom.add_student(student)
      expect(classroom.students).to include(student)
      expect(student.classroom).to eq(classroom)
    end
  end
end