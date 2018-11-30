class Room

attr_reader :room_name, :capacity, :guests, :playlist

  def initialize(room_name, capacity)
    @room_name = room_name
    @capacity = capacity
    @guests= []
    @playlist = []
  end

  def check_in(guest)
    @guests << guest
  end

  def check_out(guest)
    return @guests.pop
  end

  def add_songs(song)
    @playlist << song
  end
end
