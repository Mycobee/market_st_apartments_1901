require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require 'pry'

class ApartmentTest < Minitest::Test

  def test_it_exists
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, a1
  end

  def test_it_has_rental_info
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    # binding.pry

    assert_equal "A1", a1.rental_info[:number]
    assert_equal 1200, a1.rental_info[:monthly_rent]
    assert_equal 1, a1.rental_info[:bathrooms]
    assert_equal 1, a1.rental_info[:bedrooms]
    assert_nil a1.rental_info[:renter]
  end

  def test_it_can_add_renter
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    jessie = Renter.new("Jessie")
    a1.add_renter(jessie)

    assert_equal jessie, a1.rental_info[:renter]
  end
end
