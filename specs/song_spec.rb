require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < Minitest::Test

  def setup
    @song1 = Song.new("Wuthering Heights", "Kate Bush")
    @song2 = Song.new("Song 2", "Blur")
    @song3 = Song.new("Baboushka", "Kate Bush")
    @song4 = Song.new("F*** Tha Police", "NWA")
    @playlist = [@song1, @song2, @song3, @song4]
  end

  def test_song_has_name
    assert_equal("Wuthering Heights", @song1.song_name)
  end

  def test_song_has_artist
    assert_equal("Blur", @song2.artist)
  end

end
