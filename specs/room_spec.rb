require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guests')
require_relative('../song')



class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new("Room 1", 10)
    @room2 = Room.new("Room 2", 6)

    @guest1 = Guests.new("Mozzdog", 100)
    @guest2 = Guests.new("Chimp", 80)
    @guest3 = Guests.new("Burns", 50)
    @guest4 = Guests.new("Heldawg", 100)
    @guest5 = Guests.new("Alix", 100)
    @guest6 = Guests.new("Hannah", 80)
    @guest7 = Guests.new("Tom", 50)
    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6, @guest7]

    @song1 = Song.new("Wuthering Heights", "Kate Bush")

    @playlist = [@song1, @song2, @song3, @song4]



  end

  def test_room_has_name
    assert_equal("Room 1", @room1.room_name)
  end

  def test_room_has_capacity
    assert_equal(6, @room2.capacity)
  end

  def test_check_in_guest_to_room
    @room1.check_in(@guest1)
    assert_equal([@guest1], @room1.guests)
  end

  def test_check_out_guest_of_room
    @room1.check_out(@guest1)
    assert_equal([], @room1.guests)
  end

  def test_add_song_to_room
    @room1.add_songs(@song1)
    assert_equal([@song1], @room1.playlist)
  end

  def test_add_all_songs_to_room
    @room2.add_songs(@playlist)
    assert_equal([@playlist], @room2.playlist)
  end

  def test_room_has_spaces_available__true
    result = @room1.spaces_available?
    assert_equal(true, result)
  end

  def test_room_has_spaces_available__false
    result = @room2.check_in(@guests) == @capacity
    assert_equal(false, result)
  end

end
