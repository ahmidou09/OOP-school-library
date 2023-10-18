require_relative 'person'

class Teacher < Person
  def initialize(specialization, name, age, parent_permission: true)
    super(name, age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_s
    "Teacher: Name - #{name}, Age - #{age}, Specialization - #{@specialization}"
  end
end
