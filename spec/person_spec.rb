require 'date'
require_relative '../person/person'

describe Person do
  let(:person) { Person.new(20, 'John Doe') }

  describe '#initialize' do
    it 'creates a new person with an age and name' do
      expect(person.age).to eq(20)
      expect(person.name).to eq('John Doe')
    end

    it 'initializes rentals as an empty array' do
      expect(person.rentals).to be_an(Array)
      expect(person.rentals).to be_empty
    end
  end

  describe '#can_use_services?' do
    it 'returns true if the person is of age' do
      expect(person.can_use_services?).to be(true)
    end

    it 'returns true if parent permission is granted' do
      young_person = Person.new(16, 'Jane Doe', parent_permission: true)
      expect(young_person.can_use_services?).to be(true)
    end

    it 'returns false if person is under age and no parent permission' do
      young_person = Person.new(16, 'Jane Doe', parent_permission: false)
      expect(young_person.can_use_services?).to be(false)
    end
  end

  describe '#add_rental' do
    let(:book) { Book.new('Title', 'Author') }
    let(:date) { Date.today }

    it 'creates a new rental associated with the person and book' do
      person.add_rental(book, date)
      rental = person.rentals.first

      expect(rental).to be_an_instance_of(Rental)
      expect(rental.book).to eq(book)
      expect(rental.person).to eq(person)
      expect(rental.date).to eq(date)
    end
  end

  describe '#correct_name' do
    it 'returns the correct name' do
      expect(person.correct_name).to eq('John Doe')
    end
  end
end
