class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end
  def add_patron(patron)
      @patrons << patron
  end
  # require 'pry'; binding.pry
  def yell_at_patrons
    @patrons.each do |patron|
      patron.upcase!
    end
  end
end
