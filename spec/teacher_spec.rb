require 'date'
require_relative '../person/teacher'

describe Teacher do
  let(:teacher) { Teacher.new('Math', 30, 'Jane Doe') }

  describe '#initialize' do
    it 'creates a new teacher with a specialization, name, age' do
      expect(teacher.specialization).to eq('Math')
      expect(teacher.name).to eq('Jane Doe')
      expect(teacher.age).to eq(30)
    end
  end

  describe '#can_use_services?' do
    it 'always returns true for teachers' do
      expect(teacher.can_use_services?).to be(true)
    end
  end
end
