require 'date'
require_relative '../person/student'
require_relative '../person/classroom'

describe Student do
  let(:classroom) { Classroom.new('Room A') }
  let(:student) { Student.new(15, 'John Doe', true) }

  describe '#initialize' do
    it 'creates a new student with an age, name, and parent permission' do
      expect(student.age).to eq(15)
      expect(student.name).to eq('John Doe')
      expect(student.parent_permission).to be(true)
    end

    it 'initializes classroom as nil by default' do
      expect(student.classroom).to be_nil
    end
  end

  describe '#play_hooky' do
    it 'returns a string representing playing hooky' do
      expect(student.play_hooky).to eq('¯(ツ)/¯')
    end
  end

  describe '#add_classroom=' do
    it 'assigns a classroom to the student and adds the student to the classroom' do
      student.add_classroom = (classroom)
      expect(student.classroom).to eq(classroom)
      expect(classroom.students).to include(student)
    end
  end

  describe '#to_s' do
    it 'returns a string representation of the student' do
      expect(student.to_s).to eq('Student: Name - John Doe, Age - 15, Parent Permission - true')
    end
  end
end
