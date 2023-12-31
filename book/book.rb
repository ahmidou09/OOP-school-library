require_relative '../rental/rental'
require_relative '../person/person'

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def create_rental(date, person)
    rental = Rental.new(self, date, person)
    @rentals.push(rental)
  end

  def to_s
    "Book: Title - #{@title}, Author - #{@author}"
  end
end
