require 'date'
require_relative '../book/book'

describe Book do
  let(:book) { Book.new('The World: A Family History', 'British') }
  let(:person) { Person.new(55, 'Shashi Tharoor') }

  describe '#initialize' do
    it 'creates a new book with a title and author' do
      expect(book.title).to eq('The World: A Family History')
      expect(book.author).to eq('British')
    end

    it 'initializes rentals as an empty array' do
      expect(book.rentals).to be_an(Array)
      expect(book.rentals).to be_empty
    end
  end

  describe '#create_rental' do
    it 'creates a new rental associated with the book and person' do
      date = Date.today
      book.create_rental(date, person)
      rental = book.rentals.first

      expect(rental).to be_an_instance_of(Rental)
      expect(rental.book).to eq(book)
      expect(rental.person).to eq(person)
      expect(rental.date).to eq(date)
    end
  end

  describe '#to_s' do
    it 'returns a string representation of the book' do
      expect(book.to_s).to eq('Book: Title - The World: A Family History, Author - British')
    end
  end
end
