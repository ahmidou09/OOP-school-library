require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :name, :classroom

  def initialize(age, name, parent_permission, classroom = nil)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def add_classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self)
  end

  def to_s
    "Student: Name - #{name}, Age - #{age}, Parent Permission - #{@parent_permission}"
  end
end
