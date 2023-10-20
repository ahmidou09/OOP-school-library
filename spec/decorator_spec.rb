require_relative '../decorator/decorator'

describe Decorator do
  let(:nameable) { double('Nameable', correct_name: 'John Doe') }
  let(:decorator) { Decorator.new(nameable) }

  describe '#correct_name' do
    it 'calls correct_name on the wrapped nameable' do
      expect(decorator.correct_name).to eq('John Doe')
    end
  end
end
