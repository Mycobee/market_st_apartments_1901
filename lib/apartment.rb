class Apartment
  attr_reader :rental_info

  def initialize(rental_info = {})
    @rental_info = rental_info
  end

  def add_renter(renter)
    @rental_info[:renter] = renter
  end
end
