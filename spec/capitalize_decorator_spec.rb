require_relative '../decorator/capitalize_decorator'

describe CapitalizeDecorator do
  let(:nameable) { double('Nameable', correct_name: 'john doe') }
  let(:decorator) { CapitalizeDecorator.new(nameable) }

  describe '#correct_name' do
    it 'capitalizes the correct name' do
      expect(decorator.correct_name).to eq('John doe')
    end
  end
end
