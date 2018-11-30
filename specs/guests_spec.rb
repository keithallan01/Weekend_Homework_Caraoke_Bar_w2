require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class TestGuests < Minitest::Test

  def setup
    @guest1 = Guests.new("Mozzdog", 100)
    @guest2 = Guests.new("Chimp", 80)
    @guest3 = Guests.new("Burns", 50)
    @guest4 = Guests.new("Heldawg", 100)
    @guest5 = Guests.new("Alix", 100)
    @guest6 = Guests.new("Hannah", 80)
    @guest7 = Guests.new("Tom", 50)
    

  end

  def test_guest_has_name
    assert_equal("Mozzdog", @guest1.guest_name)
  end

  def test_guest_has_wallet
    assert_equal(80, @guest2.wallet)
  end

end
