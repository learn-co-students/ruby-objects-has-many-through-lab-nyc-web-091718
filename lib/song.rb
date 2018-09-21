# Songs belong to an artist and belong to a genre.

class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  # Lists each song in the class variable.
  def self.all
    @@all
  end # end of .all method

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    self.class.all << self
  end

end # end of Song class
