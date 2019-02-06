class Building
  attr_reader :units

  def initialize(units = [])
    @units = units
  end

   def add_unit(apartment)
    @units << apartment
   end

   def average_rent
     total_rent = 0.0
     averaged_rent = 0.0
     @units.each do |apartment|
      total_rent += apartment.rental_info[:monthly_rent]
     end


     averaged_rent = (total_rent / @units.count)
     averaged_rent.round(1)
   end

   def renter_with_highest_rent
     binding.pry
     @units.sort { |apartment| apartment.rental_info[:monthly_rent] }
   end

end
