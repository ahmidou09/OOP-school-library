require_relative 'decorator'

class TrimmerDecorator < Decorator
  def correct_name
    super.correct_name[0..9]
  end
end
