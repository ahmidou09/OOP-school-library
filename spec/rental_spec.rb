require 'date'
require_relative '../rental/rental'
require_relative '../book/book'
require_relative '../person/person'
​
describe Rental do
  let(:book) { Book.new('Title', 'Author') }
  let(:person) { Person.new(20, 'John Doe') }
  let(:date) { Date.today }
​
  describe '#initialize' do
    it 'creates a new rental associated with a book, date, and person' do
      rental = Rental.new(book, date, person)
​
      expect(rental.book).to eq(book)
      expect(rental.person).to eq(person)
      expect(rental.date).to eq(date)
​
      expect(person.rentals).to include(rental)
      expect(book.rentals).to include(rental)
    end
  end
end