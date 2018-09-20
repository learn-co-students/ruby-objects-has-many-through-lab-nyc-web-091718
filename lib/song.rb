require 'pry'
class Song
  attr_accessor :artist
  @@songs = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@songs << self
    genre.songs << self
    genre.artists << artist
    #binding.pry
  end

  def self.all
    @@songs
  end

  def genre
    @genre
  end
end
