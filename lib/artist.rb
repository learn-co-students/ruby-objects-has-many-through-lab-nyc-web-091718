require 'pry'
class Artist
  attr_accessor :name
  @@artists = []
  #@songs = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@artists << self
  end

  def self.all
    @@artists
  end

  def new_song(name, genre)
    #binding.pry
    the_song = Song.new(name, self, genre)
    @songs << the_song
    @genres << genre
    the_song
  end

  def songs
    @songs
  end

  def genres
    @genres
  end

end

#binding.pry
