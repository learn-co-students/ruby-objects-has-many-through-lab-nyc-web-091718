require 'pry'

class Artist
  @@all = []
  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genres = []
  end

  def new_song(name, genre)
# binding.pry
    Song.new(name, self, genre)
    # binding.pry
    # Genre.all.find  {|genre|  genre.name == name}
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.map {|x| x.genre}
  end

end
