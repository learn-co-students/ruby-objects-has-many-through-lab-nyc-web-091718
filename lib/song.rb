class Song

attr_accessor :genre, :artist
  @@all = []

  def initialize(name, artist, genre)
    @@all << self
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.all
    @@all
  end

end
