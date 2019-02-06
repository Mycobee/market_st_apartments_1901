require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/renter'
require './lib/apartment'


class RenterTest < Minitest::Test

  def test_it_exists
    jessie = Renter.new("Jessie")
    assert_instance_of Renter, jessie
  end
end
