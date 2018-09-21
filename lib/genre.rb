# A genre has many songs and an artist has many songs.

class Genre
  attr_accessor :name

  @@all = []

  # Lists each genre in the class variable.
  def self.all
    @@all
  end # end of .all method

  def initialize(name)
    @name = name
    self.class.all << self
  end # end of #initialize method

  # Iterates through all songs and finds the songs
  # that belong to that genre
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end # end of #songs method

  # Iterates over the genre's collection of songs and collects
  # the artist that owns each song.
  def artists
    songs.map do |song|
      song.artist
    end
  end # end of #artists method

end # end of Genre class
