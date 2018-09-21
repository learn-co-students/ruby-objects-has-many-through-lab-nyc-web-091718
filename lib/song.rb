class Song

  attr_accessor :artist, :genre

  attr_reader :name

@@all =[]

def initialize(name, artist, genre)
  genre.songs << self
  genre.artists << artist
  @genre = genre
  @artist = artist
  @name = name
  @@all << self
end

def self.all
  @@all
end


end
