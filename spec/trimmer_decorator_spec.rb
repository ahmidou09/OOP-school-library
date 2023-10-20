require_relative '../decorator/trimmer_decorator'
​
describe TrimmerDecorator do
  let(:nameable) { double('Nameable', correct_name: 'John Doe is a long name') }
  let(:decorator) { TrimmerDecorator.new(nameable) }
​
  describe '#correct_name' do
    it 'trims the correct name to the first 10 characters' do
      expect(decorator.correct_name).to eq('John Doe i')
    end
  end
end