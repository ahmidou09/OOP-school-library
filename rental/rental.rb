require_relative '../book/book'
require_relative '../person/person'

class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(book, date, person)
    @date = date
    @book = book
    @person = person

    person.rentals << self
    book.rentals << self
  end
end
