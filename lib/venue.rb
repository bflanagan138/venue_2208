class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity, over_capacity = false)
    @name = name
    @capacity = capacity
    @patrons = []
    @over_capacity = over_capacity
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

  def over_capacity
    if @patrons.count > @capacity
      true
    else
      false
    end
  end

  # def kick_out
  #   if @over_capacity = true
  #     @patrons.pop
  #   end
  # end
end
